cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.412.08.1"
  sha256 arm:   "accc8a394375c5c0eb9c1bbcf467b08f0029265e060c8434b0e59cbf79876f63",
         intel: "a8204afa561309101a13f59971f1d2a3f7b5c33967fbd2e9a2630ff9788903ff"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
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
