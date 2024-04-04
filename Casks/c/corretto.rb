cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.0.36.2"
  sha256 arm:   "7310e5c440f555cd3ff589fcfff0b1a1cebd6cf58b7694de77b44e3314a99fc6",
         intel: "73a2d3271ee04a69e383322f92a642f23e52a5eadeb7b029bd1299f326a2fcde"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
