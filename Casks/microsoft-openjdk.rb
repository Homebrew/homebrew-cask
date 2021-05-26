cask "microsoft-openjdk" do
  version "16.0.1.9.1"
  sha256 "4c7acade7ee71673ad79b0e9dedfe791bd0ae60a03ad5807bda39057f568d725"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macOS-x64.pkg",
      verified: "https://aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    strategy :page_match
    regex(%r{href=.*?/microsoft-jdk-(\d+(?:\.\d+)*)-macOS-x64.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macOS-x64.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"
end
