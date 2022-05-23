cask "microsoft-openjdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.3"

  if Hardware::CPU.intel?
    sha256 "c88f2a01e88901538991c4198dbe4661a63e278e2a2a0df180e70737b2d14c60"
  else
    sha256 "b202672c16acbcd1063aadee86f7316f7880f84e9625ad16d4594908ce59fa39"
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
