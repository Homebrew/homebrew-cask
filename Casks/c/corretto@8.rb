cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.512.08.1"
  sha256 arm:   "14bef3a8002b58bc81cf97193c11aabf028a19ebb6f3c037ebc1e776d331a58b",
         intel: "47fc696c29b229a047c99342e1ebc4205b7f83f15e38d78e57b8e7ff3c3879e8"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  depends_on :macos

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
  # No zap stanza required
end
