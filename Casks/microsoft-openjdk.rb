cask "microsoft-openjdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.2.8.1"

  if Hardware::CPU.intel?
    sha256 "1b83dc134c06190b262e3a19cfc21bd2e471ed2fc6fae84e838b0bc82ec21313"
  else
    sha256 "de47aaecdc8362e59345d27777cc443e3d011f2758aae20c4f5a9289f9b015a4"
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
