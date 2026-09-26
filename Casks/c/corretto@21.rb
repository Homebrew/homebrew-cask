cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.12.12.1"
  sha256 arm:   "ae7b5154b762d3d5f94cb6f7a8f93597abd9c189e2e776a383c841c96cd3a8cb",
         intel: "5c6b4b12bdada5b70bd2c8193e8a25835d7bf8b7d90467442f2c2107ad6ea6f5"

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
