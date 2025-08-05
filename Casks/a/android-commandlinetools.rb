cask "android-commandlinetools" do
  version "13114758"
  sha256 "5673201e6f3869f418eeed3b5cb6c4be7401502bd0aae1b12a29d164d647a54e"

  url "https://dl.google.com/android/repository/commandlinetools-mac-#{version}_latest.zip",
      verified: "dl.google.com/android/repository/"
  name "Android SDK Command-line Tools"
  desc "Command-line tools for building and debugging Android apps"
  homepage "https://developer.android.com/studio"

  livecheck do
    url :homepage
    regex(%r{href=.*?/commandlinetools[._-]mac[._-](\d+)[._-]latest\.zip}i)
  end

  conflicts_with cask:    "android-sdk",
                 formula: "proguard"

  android_sdk_root = "#{HOMEBREW_PREFIX}/share/android-commandlinetools"
  android_clt_dir = "#{android_sdk_root}/cmdline-tools/latest"

  binary "#{android_clt_dir}/bin/apkanalyzer"
  binary "#{android_clt_dir}/bin/avdmanager"
  binary "#{android_clt_dir}/bin/lint"
  binary "#{android_clt_dir}/bin/retrace"
  binary "#{android_clt_dir}/bin/screenshot2"
  binary "#{android_clt_dir}/bin/sdkmanager"
  artifact "cmdline-tools", target: android_clt_dir

  zap trash: android_sdk_root

  caveats do
    depends_on_java
    <<~EOS
      Default Android SDK root is #{android_sdk_root}
    EOS
  end
end
