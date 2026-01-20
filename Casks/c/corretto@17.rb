cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.18.8.1"
  sha256 arm:   "d4c1fb8a37523bb0ba722fdd1e46b3904d62860dc3868a553a202d556ddc734a",
         intel: "aa5b451ccb8cfa90e55c0f38cee9f02183fafa8f905ddff71e1dd8034dff5e33"

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
