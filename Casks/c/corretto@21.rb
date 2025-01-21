cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.6.7.1"
  sha256 arm:   "ba87530c97c551ca412a59bc123c99b4b2d88ee6dabbc63cf07584a4fe921977",
         intel: "25421b24b660cea0c62706993e9cbff5e362fbfbf0a62bf6c8920fc930b1108f"

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
