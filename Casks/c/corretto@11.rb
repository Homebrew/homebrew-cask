cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.31.11.1"
  sha256 arm:   "cb02bd6f26d4a9649f0e9d9e2c06cc3e22793782f1aad77ec15a2aa8e8d8b96e",
         intel: "b63be13766c674bd199d6896462843048da42f67e85d109b1b51f9671bdaa44f"

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
