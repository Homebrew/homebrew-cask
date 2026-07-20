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

  command_wrapper "ndk-build", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-build"
  command_wrapper "ndk-depends", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-depends"
  command_wrapper "ndk-gdb", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-gdb"
  command_wrapper "ndk-stack", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-stack"
  command_wrapper "ndk-which", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-which"

  preflight_steps do
    symlink "AndroidNDK*.app/Contents/NDK", "share/android-ndk",
            target_base: :homebrew_prefix, source_glob: true, force: true
  end

  uninstall delete: "#{HOMEBREW_PREFIX}/share/android-ndk"

  # No zap stanza required

  caveats <<~EOS
    You may want to add to your profile:
       'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/share/android-ndk"'
  EOS
end
