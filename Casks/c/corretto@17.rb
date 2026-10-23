cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.21.0.10"
  sha256 arm:   "c665d56c9df42765ac0d533d879d51e6f3d5b29737e757025f5e5da043b7dda4",
         intel: "6eebb6453f2ab94b0a3fb9df4b4a590a0d3eb42f68dfad063297e3d981f0707a"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  depends_on :macos

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
