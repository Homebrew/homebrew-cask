cask "microsoft-openjdk" do
  version "17.35.1"

  if Hardware::CPU.intel?
    sha256 "7e196a460a56a240eeafded32d25f4c94b680e300315051e008424416c866bb4"
    url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macOS-x64.pkg",
        verified: "aka.ms/download-jdk/"
    pkg "microsoft-jdk-#{version}-macOS-x64.pkg"
  else
    sha256 "483a68942e24791b65334b6a4768449dadaddf30dc5407f08fbb8f7dbd6066da"
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
