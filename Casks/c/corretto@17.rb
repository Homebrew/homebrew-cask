cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.19.10.1"
  sha256 arm:   "75a91b76889b5a148a903bb021210ecb2f00cc63c1bea1d330ffbbace238dbf7",
         intel: "fc6b69a1fc8be3893b14ed64a473e8eab5664121f691600e551eb74a3d056ccf"

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
