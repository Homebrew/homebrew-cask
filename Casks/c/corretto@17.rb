cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.20.8.1"
  sha256 arm:   "d4113af4b78e7083c7318fbec0b441a71538aae6b8e2014d720b2bfcb03044a1",
         intel: "4b8e2b4e24cc8701cc863761d0da6c89ea51bf79bc5035081ca670fad7890342"

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
