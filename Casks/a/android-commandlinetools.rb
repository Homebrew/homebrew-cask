cask "android-commandlinetools" do
  version "11076708"
  sha256 "7bc5c72ba0275c80a8f19684fb92793b83a6b5c94d4d179fc5988930282d7e64"

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
