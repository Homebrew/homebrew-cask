cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "26.0.1.8.1"
  sha256 arm:   "4a3e3ad5ebc26f444c802b3becef4ef9af5381cf07ba60fed0989cfd8e37a8c1",
         intel: "f96af9827487c77c03871ff711fb7726e897fb42c3abd8b53bf830e020615dfe"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(/amazon[._-]corretto[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :header_match
  end

  depends_on :macos

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
