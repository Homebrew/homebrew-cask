cask "microsoft-openjdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.4"

  if Hardware::CPU.intel?
    sha256 "aa526efd06e2683861754538a3d48accbb2aba2eb49be277fb030aa9e321273a"
  else
    sha256 "24546bbd3ae9b74009da4961b655a5511ac2ea693d4f68d72f6036da1036fe5f"
  end

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
end
