cask "android-ndk" do
  version "24"
  sha256 "162a7000515be07489f2ed70d6d3a117d236150f83f3fcb601c163349429ba23"

  url "https://dl.google.com/android/repository/android-ndk-r#{version}-darwin.zip",
      verified: "dl.google.com/android/repository/"
  name "Android NDK"
  desc "Toolset to implement parts of Android apps in native code"
  homepage "https://developer.android.com/ndk/index.html"

  livecheck do
    url "https://developer.android.com/ndk/downloads"
    regex(/Latest\s+r(\d+[a-z]?)\b(?!\s+Preview)/i)
  end

  conflicts_with cask: "crystax-ndk"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/ndk_exec.sh"
  preflight do
    FileUtils.ln_sf("#{staged_path}/android-ndk-r#{version}", "#{HOMEBREW_PREFIX}/share/android-ndk")

    File.write shimscript, <<~EOS
      #!/bin/bash
      readonly executable="#{staged_path}/android-ndk-r#{version}/$(basename ${0})"
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
