cask "corretto@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.1.2"
  sha256 arm:   "56f6facd9356b515037ae9de04eb390ccc5ecb5d943eac246b8fae0a5053a1e9",
         intel: "7d68d167391dbfb12549aea618f125b2ad821a5cd2de0c37ff7882e0775d7e39"

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

  zap :not_required
end
