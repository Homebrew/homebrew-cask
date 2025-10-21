cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.9.10.1"
  sha256 arm:   "697fa4b763b523aa31f3d083f85440e5ceda72dba27d1cf4e2407ed6393b35c5",
         intel: "af09900f12c40b0beef897d29dbdb03ab7cceb816e5e067bb0bc7da32288beb7"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(/amazon[._-]corretto[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
