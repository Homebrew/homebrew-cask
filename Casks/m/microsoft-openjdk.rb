cask "microsoft-openjdk" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.0"
  sha256 arm:   "07b17add85813bab02527edc555b16394c6db5b16e4c2b85eccb0fcc9204f0ba",
         intel: "fd8d0990873fa99f0c19498236ffe0fc75abec036db110c9de712a95713b5a2c"

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
