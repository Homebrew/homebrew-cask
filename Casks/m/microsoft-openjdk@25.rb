cask "microsoft-openjdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.0.2"
  sha256 arm:   "243af03ad9b0184e19fa0334279ba0a35ec078d4a471ca5e8a5714dc162588d8",
         intel: "0642f3767467fbdba25692b7eab4e084f80c6f0372cd22a1b57e7c97199ae52c"

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
