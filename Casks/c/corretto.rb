cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.1.0.10"
  sha256 arm:   "3b5adece3a748039ed2f3b478bc1fc6a635befa4bbbda3f5f57fd9cdf433fb17",
         intel: "720842d74a63795912546fe2c52a894b3d3baaf25ff46b142385cd4df848acd7"

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
