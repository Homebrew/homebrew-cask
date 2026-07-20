cask "android-ndk" do
  version "29"
  sha256 "2d6922da5f95178bea870069f0a463c33d014ddfa364c74320e11c47531db24d"

  url "https://dl.google.com/android/repository/android-ndk-r#{version}-darwin.dmg",
      verified: "dl.google.com/android/repository/"
  name "Android NDK"
  desc "Toolset to implement parts of Android apps in native code"
  homepage "https://developer.android.com/ndk/index.html"

  livecheck do
    url "https://developer.android.com/ndk/downloads"
    regex(/Latest\b(?!\s+Beta|\s+Pre-Release).*?r(\d+[a-z]?)/i)
  end

  depends_on :macos

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  command_wrapper "ndk_exec.sh", target: "ndk-build", content: <<~EOS
    #!/bin/bash
    readonly executable="#{HOMEBREW_PREFIX}/share/android-ndk/$(/usr/bin/basename "$0")"
    test -f "${executable}" && exec "${executable}" "$@"
  EOS

  preflight_steps do
    symlink "AndroidNDK*.app/Contents/NDK", "share/android-ndk",
            target_base: :homebrew_prefix, source_glob: true, overwrite: true
  end

  %w[
    ndk-depends
    ndk-gdb
    ndk-stack
    ndk-which
  ].each { |link_name| binary "ndk_exec.sh", target: link_name }

  uninstall delete: "#{HOMEBREW_PREFIX}/share/android-ndk"

  # No zap stanza required

  caveats <<~EOS
    You may want to add to your profile:
       'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/share/android-ndk"'
  EOS
end
