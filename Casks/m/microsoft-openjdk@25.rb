cask "microsoft-openjdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.4"
  sha256 arm:   "c6289eb469522922e032b8662a2f01482d4690ccaa3ff7a59a80b68e1e2ff6bf",
         intel: "7e514d6f900848483668e3d21c144dc2dd9a6761867db188846feeb706305ae8"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(25(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on :macos

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
