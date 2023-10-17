cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.1.12.1"
  sha256 arm:   "12c9082f156cc8889d5723c2ff02bb10d59177ffa054a299a5ea0cadbea4717d",
         intel: "2c8eb58250a51761548e0e14ea462c006d4ea020a39bd3d13bd7c0f55a443a65"

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
