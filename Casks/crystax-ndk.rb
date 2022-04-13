cask "crystax-ndk" do
  version "10.3.2"
  sha256 "382bc6bf8bf4fb1278372ac70f4b86cf6a633d60b33f30b6895f5c9975d3d7bf"

  url "https://www.crystax.net/download/crystax-ndk-#{version}-darwin-x86_64.tar.xz"
  name "Crystax NDK"
  desc "Drop-in replacement for Google's Android NDK"
  homepage "https://www.crystax.net/android/ndk"

  livecheck do
    url :homepage
    regex(%r{href=.*?/crystax[._-]ndk[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]x86[._-]64\.t}i)
  end

  conflicts_with cask: "android-ndk"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/ndk_exec.sh"
  preflight do
    FileUtils.ln_sf("#{staged_path}/crystax-ndk-#{version}", "#{HOMEBREW_PREFIX}/share/crystax-ndk")

    File.write shimscript, <<~EOS
      #!/bin/bash
      readonly executable="#{staged_path}/crystax-ndk-#{version}/$(basename ${0})"
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
    FileUtils.rm_f("#{HOMEBREW_PREFIX}/share/crystax-ndk")
  end

  caveats <<~EOS
    You may want to add to your profile:
       'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/share/crystax-ndk"'
  EOS
end
