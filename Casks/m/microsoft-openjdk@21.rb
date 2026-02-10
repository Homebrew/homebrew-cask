cask "microsoft-openjdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.10"
  sha256 arm:   "00120eb6408afce6ae3b6a37d5216905a5616d327d5b42721f56a2f4abf55e8f",
         intel: "70b8e073ff39b5a5974f956eebd997e143402103019666acd6df4315879a4d9e"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(21(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
