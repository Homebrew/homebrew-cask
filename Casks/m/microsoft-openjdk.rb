cask "microsoft-openjdk" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.8"
  sha256 arm:   "85ed18183e7241401fcf37ff1f649fce8f98e71f1040e0773bea02c81b0017c8",
         intel: "72e2fb7cf644d965f5d2b993250ef3f35ed8a728ea441407bc966822e6503ede"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
    "~/Library/Preferences/net.java.openjdk.java.plist",
  ]
end
