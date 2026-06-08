cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.492.09.2"
  sha256 arm:   "a18b89b75c65c2748c3efc338206e3f8373a4ab18c06541545e99c96a92d5aae",
         intel: "b3ad3791bd3b16cdd18e4e1dc845a44c6d797f7af037ddaeb5eaa14551e5d71c"

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
