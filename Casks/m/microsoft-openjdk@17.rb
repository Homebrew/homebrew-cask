cask "microsoft-openjdk@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.11"
  sha256 arm:   "174415ec9dfbd1f461ff1c34885295ad0f810a52b661307ccb85537e3f67daeb",
         intel: "295216ec9fe64c27f1731636fb0273b3ae6348329f3a0a6d57beec897fbd6a97"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(17(?:\.\d+)+)[._-]macOS[._-]#{arch}\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
