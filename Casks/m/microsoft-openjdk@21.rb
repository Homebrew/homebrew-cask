cask "microsoft-openjdk@21" do
  arch arm: "aarch64", intel: "x64"

  sha256 arm:   "d2f673fbc9ff6223d466948fc5b6f30c46747a2e60a3d4021cf412e1fb1f2cbd",
         intel: "d9b8bb46d05c7c228f74b02c4ea45697da13f76841c09df12fa2a1365c1a7171"

  on_arm do
    version "21.0.13.1"
  end
  on_intel do
    version "21.0.13.0.2"
  end

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
