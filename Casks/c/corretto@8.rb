cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.502.07.1"
  sha256 arm:   "a011c6669e8e1a16163707007dbe9d51f762c16d7ec576eb7863d00c3263538c",
         intel: "02ef74d0a2d7271eb1f40a5193650514b903f2cb028f4200d7ceef93cdc2e9d2"

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
