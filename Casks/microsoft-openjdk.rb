cask "microsoft-openjdk" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.4.1"
  sha256 arm:   "ba72bb40d27f7fea18f1127d643eced9bf29d4710dfac95f7db47b0b42bb1ab5",
         intel: "43a6c96f729a0bc440b9bbe3a6c1e82ea76f6c10269e30cdeb996edd04434c80"

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
