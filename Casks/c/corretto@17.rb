cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.11.9.1"
  sha256 arm:   "6e757c22fbe62ea7cefe6465c79bf6c0e9230121d3127633144ceca0f8b48eec",
         intel: "76f3fb3ea4de49c054236ab0c00ec8e7a74f5336ceb5a13f234448ab0457c2eb"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
