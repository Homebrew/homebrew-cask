cask "microsoft-openjdk" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.4"
  sha256 arm:   "cfcb6c6587ead87550c8d5f4d744dc0f39c554505906dbe33bb9670f92ca7692",
         intel: "9d42c26bca136197f4424897b23ddf3051b210f26ae004643636b769f712697e"

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
