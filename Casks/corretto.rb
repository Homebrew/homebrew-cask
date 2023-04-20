cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.1.9.1"
  sha256 arm:   "7fd38b658aad1ed7451f2c252e6af9e29a4a0b2e890d2b8589938cad5b6d02a5",
         intel: "a2e5e0719385243c84e76e69602c6090009b5d38f229c8304f3691d281717f47"

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
