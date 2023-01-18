cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "19.0.2.7.1"
  sha256 arm:   "fec96e45c0599e71ba69f30c1ac86a60b6110eed812121bd694f1b029b4d2a35",
         intel: "d2450be57ebb821d5ce244b2328c645852ad3e68575e0ccf163219fc8f6f7f68"

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
end
