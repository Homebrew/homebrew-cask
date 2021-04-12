cask "android-commandlinetools" do
  version "6858069"
  sha256 "58a55d9c5bcacd7c42170d2cf2c9ae2889c6797a6128307aaf69100636f54a13"

  url "https://dl.google.com/android/repository/commandlinetools-mac-#{version}_latest.zip",
      verified: "dl.google.com"

  livecheck do
    url "https://developer.android.com/studio#cmdline-tools"
  end

  name "android-cmdline-tools"
  homepage "https://developer.android.com/studio"
  desc "Android command-line tools without needing Android Studio"

  conflicts_with cask: [
    "android-sdk",
    "android-platform-tools",
  ]
end
