cask "android-ndk" do
  version "25b"
  sha256 "fc41bab49d4c1fe9239bfd06e4eb7cda8348635aaa3568fec942f43a9d5eb04b"

  url "https://dl.google.com/android/repository/android-ndk-r#{version}-darwin.dmg",
      verified: "dl.google.com/android/repository/"
  name "Android NDK"
  desc "Toolset to implement parts of Android apps in native code"
  homepage "https://developer.android.com/ndk/index.html"

  livecheck do
    url "https://developer.android.com/ndk/downloads"
    regex(/Latest.*?r(\d+[a-z]?)\b(?!\s+Preview)/i)
  end

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/ndk_exec.sh"
  preflight do
    build = File.read("#{staged_path}/source.properties").match(/(?<=Pkg.Revision\s=\s\d\d.\d.)\d+/)
    FileUtils.ln_sf("#{staged_path}/AndroidNDK#{build}.app/Contents/NDK", "#{HOMEBREW_PREFIX}/share/android-ndk")

    File.write shimscript, <<~EOS
      #!/bin/bash
      readonly executable="#{staged_path}/AndroidNDK#{build}.app/Contents/NDK/$(basename ${0})"
      test -f "${executable}" && exec "${executable}" "${@}"
    EOS
  end

  %w[
    ndk-build
    ndk-depends
    ndk-gdb
    ndk-stack
    ndk-which
  ].each { |link_name| binary shimscript, target: link_name }

  uninstall_postflight do
    FileUtils.rm_f("#{HOMEBREW_PREFIX}/share/android-ndk")
  end

  caveats <<~EOS
    You may want to add to your profile:
       'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/share/android-ndk"'
  EOS
end
