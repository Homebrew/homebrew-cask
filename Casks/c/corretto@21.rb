cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.12.8.1"
  sha256 arm:   "59567c0fbe11f595cd3377c67a82ce85ded1614e8a5618cf389f7cb325893d87",
         intel: "248f1c3520a039d74514472be5fcea3c7efeba9ba324220aae41f4f5def57c1c"

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
