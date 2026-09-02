cask "corretto@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.4.8.1"
  sha256 arm:   "aac247e21c7ef8d390e4779e7a40c7f91548426d916790a1788694c1168bf097",
         intel: "c1339443867dad3573e1f4e1a828c23898dbfd44bc4ca52dd9794e5aaf8ea3be"

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
