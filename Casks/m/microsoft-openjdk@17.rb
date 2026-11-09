cask "microsoft-openjdk@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.21.0.2"
  sha256 arm:   "b316b95749ec705e477e991415023bdea1f29855247c4182d8e615286f89d3ad",
         intel: "c3b689f8e42f3f4b0f62639b13e3ac8545a20a3ea5b2f34bb202ab2e5885967f"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(17(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on :macos

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
