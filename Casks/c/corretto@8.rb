cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.432.06.1"
  sha256 arm:   "69b978c045e01c7ae66faf04be3ddc09b4bf6dc3cbb3f9cd374a5140741d993a",
         intel: "2dad2b634c58bfd162e290eaa113d53bb1b5cd2c78d02b27579848366236e643"

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
