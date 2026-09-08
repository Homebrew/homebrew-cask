cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.504.01.1"
  sha256 arm:   "995b606c7b1771810dc6e57a2db99dee925f56dbc8194a35682697ad67ac5894",
         intel: "1c1023d871f7d46219ad516cba505ad1bba2456dd311344a881439fe85cafd60"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
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
