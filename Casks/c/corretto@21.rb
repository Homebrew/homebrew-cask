cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.10.7.1"
  sha256 arm:   "d0ca3c3afe2858572c436d1afaa23b7ca3781476ce8c3f80dac8a275a77d50d6",
         intel: "8a34da4a34dd50ab7302f624cd9870d7fe38a5a70227980e6c597cb46268c2e6"

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
