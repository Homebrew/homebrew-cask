cask "microsoft-openjdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.1.12.1"

  if Hardware::CPU.intel?
    sha256 "f39e87d5c76c7e108e8e24645f294b5921dd5a431c8a62a58578dd83dfcb8cae"
  else
    sha256 "d149d45d0c1e149c878de231d2c37110876f4501816195e23aec132fa26e5536"
  end

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macOS-#{arch}.pkg",
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
