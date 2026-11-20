cask "microsoft-openjdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.1"
  sha256 arm:   "8cf2982133dc9e39278f413bae02b4e6f49e04c4640066160ce4274ee7952a5a",
         intel: "a70c2d50b1b45f68a5c7bfa547540f7087a59f7a2596ce8da58b1334caf8a0e0"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg"
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
