cask "microsoft-openjdk" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.5"
  sha256 arm:   "792b569aaf64f3d70ca934eb97c00900b5320113acc9438d79ba8eca05bdc34e",
         intel: "1700329e377a124f752d186ddbd6da701c9975984b265d9fd7b2408822162480"

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
