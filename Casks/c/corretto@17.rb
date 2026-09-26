cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.20.12.1"
  sha256 arm:   "8e23fa8369170f37baff1afc80e8d3ce04188b52ba596a8d1a243d4dc8cb9752",
         intel: "68f13a7737a6489179405395bef13c79f7361a6035449140007fe0590195e0b0"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
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
