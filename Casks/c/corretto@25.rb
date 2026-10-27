cask "corretto@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.0.10"
  sha256 arm:   "5708c1efbef05baee28cd99bda0fd195075e1c8de4029ca6a49bebbee7aea301",
         intel: "b1671d9abf090f4239f1e3717a9d9d77a458c5b0d0d8e6f5d4afdd752dff01a0"

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
