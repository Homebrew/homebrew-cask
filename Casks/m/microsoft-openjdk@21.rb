cask "microsoft-openjdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.13.0.2"
  sha256 arm:   "4f0ef363577a5fe93a02755908a06c7e8849e2c2451a1797980bece22a254112",
         intel: "d9b8bb46d05c7c228f74b02c4ea45697da13f76841c09df12fa2a1365c1a7171"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(21(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on :macos

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
