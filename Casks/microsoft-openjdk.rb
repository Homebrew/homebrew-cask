cask "microsoft-openjdk" do
  version "16.0.2.7.1"

  if Hardware::CPU.intel?
    sha256 "a8a206ec15a4631532852d449b662fe737342606c326f1e133f64ce9837d9292"
    url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macOS-x64.pkg",
        verified: "aka.ms/download-jdk/"
    pkg "microsoft-jdk-#{version}-macOS-x64.pkg"
  else
    sha256 "1236df500f6f8627670805485b8cef53578b0808c7ec7a2e50eae6ca2b90caf9"
    url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macOS-aarch64.pkg",
        verified: "aka.ms/download-jdk/"
    pkg "microsoft-jdk-#{version}-macOS-aarch64.pkg"
  end

  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-](aarch64|x64)\.pkg}i)
  end

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"
end
