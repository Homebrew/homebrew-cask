cask "microsoft-openjdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.11"
  sha256 arm:   "8a21aa5385e96c1c5456499e8a152b7b02b59e5dc1c1920e70961b97488c7cb4",
         intel: "15b3fd90a8c5a8330b405fdcf0aef512b4006136dbcaeaae5b8666379feb13d1"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(21(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on :macos

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
