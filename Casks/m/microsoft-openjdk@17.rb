cask "microsoft-openjdk@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.19"
  sha256 arm:   "43556fc0c42350b3140c51dd87b8e27fdac75c0f8f08a059aebd69af0b28b3b6",
         intel: "9d35cf820aaa26df069d4e328013191c01cac45623719608ccda995c1af73ef6"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(17(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on :macos

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
