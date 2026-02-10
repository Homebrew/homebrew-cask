cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.18.9.1"
  sha256 arm:   "e8fe83a384d01f83da5ca13129bd13e0cf19e8d724c3d0b70719f7de58559ce4",
         intel: "96ea7b00caeb06516ae6b7c2e72e775d48a28953302d838db5ac8f44cef89838"

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
