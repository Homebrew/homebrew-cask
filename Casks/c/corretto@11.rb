cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.28.6.1"
  sha256 arm:   "1ea8284ecaf5cb98eddcf4f62aed4d5d679026c3e2a924b33178fe2ebe0e71eb",
         intel: "179ef7385c18a6ac85a3ec9680da7aefd8cb0856fe5a1411e65dc19ce2023c33"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
  # No zap stanza required
end
