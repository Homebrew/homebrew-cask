cask "microsoft-openjdk@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.30"
  sha256 arm:   "58c730a598a32e84bbe69bb999e69cc9851bbf4d5134b9c2eb93a0357186c52a",
         intel: "8a6a460cda6e8eac029cfa2679c3aba52996a73883a927479a45694c6ade794a"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(11(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
