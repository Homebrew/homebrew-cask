cask "android-commandlinetools" do
  version "8512546"
  sha256 "f810107f9e8907edc83859eb2560a62e9c3c87f2d1ae4a3d517f80234fff3f11"

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
  android_clt_dir = "#{android_sdk_root}/cmdline-tools/homebrew"

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
