cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.4.7.1"
  sha256 arm:   "a516c12b40d34eb90dfd0abed34906a73ea4772326b20160fbd98a17f9e145cd",
         intel: "8aa0bbbed187eb2cb49d97bd68eed8abd7a50ca6006db5bd6b6b39660fe347c1"

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
