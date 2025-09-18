cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.0.36.2"
  sha256 arm:   "e217c925bf3a9ad4d74c12815b00e3201b6d5fa21e229aeda451d5a20f68dc36",
         intel: "10c22630bbd776ffc3fbd2e1a46a69314cc72a6388bfeee36cbc110bc730fae4"

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
