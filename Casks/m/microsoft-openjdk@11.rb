cask "microsoft-openjdk@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.32"
  sha256 arm:   "eb97c3b81053c559603478dee289194920b4c9712f2e0929a64b950759e6c073",
         intel: "cfeb8082d13b10ebe86cc505625d80709a8d2c49958e4974476d5b65087c8534"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(11(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on :macos

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
