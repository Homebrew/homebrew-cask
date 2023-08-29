cask "microsoft-openjdk" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.8.1"
  sha256 arm:   "5bdeec95032787adc87d55fe3a001f1d3e11f5982ea893e5929aa12cf2a138bc",
         intel: "404170837f6086a2c4e10c3704ccf49b93a259827f0668810e47c9219e934c36"

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
