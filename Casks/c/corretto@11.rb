cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.32.9.1"
  sha256 arm:   "5f0f80bbdf1266097431cd5ba91bce7a19f0b8f392e083f350559192a8fa3fb5",
         intel: "956d8d1a164fc3269339807f71642eda6225dc369dbd411573d38d6644a300e9"

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
