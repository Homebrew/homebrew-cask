cask "microsoft-openjdk@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.29"
  sha256 arm:   "dc02def7be6aca75a367167dc5ac2408ce90c5ae76b65bea468f5d9c71eaa382",
         intel: "114c4339577e848d53cbee06288aab04ce3c2d335a0eeb8e55b25e4b438f9057"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(11(?:\.\d+)+)[._-]macos[._-]#{arch}\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
