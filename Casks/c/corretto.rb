cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "26.0.2.11.1"
  sha256 arm:   "61e3381feb87f6e7c49d389dcd2eb0110a5e302a42cec42b228edce7002cb130",
         intel: "5b012f1fdc5cd0a31bd2ae59d116cd7ad7deea027e32da8e4c08cfb7b9ccf8b7"

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
