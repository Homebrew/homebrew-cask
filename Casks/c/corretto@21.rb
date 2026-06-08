cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.11.10.1"
  sha256 arm:   "21f97a420152554b2e35f892f22a1d1f9460aacbef1badcf9c48dbea8f7ab6c7",
         intel: "3b946d1cf350702f7bea14a4cfc26d3db163889b1a03feda058948b48ee07717"

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
