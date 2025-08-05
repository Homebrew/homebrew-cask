cask "microsoft-openjdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.8"
  sha256 arm:   "e347ef4a82cf2303f66f0e4074ab1c38beab0e6e2a450f0d6337caef0ab973cf",
         intel: "ef5ff22e598298bc899cdae26882f3af467e632da8e1d0d41447db3b98604fb6"

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
