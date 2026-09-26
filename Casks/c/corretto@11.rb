cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.32.12.1"
  sha256 arm:   "1247f859bcf3f4b15c7ebd5505ee2f6c180e9f0be8e63ebd1e3ea7fe7fabc2ae",
         intel: "ee9bc9484fd604cf5ab0e804cb1fa718ff1c7f1bd5e8bb565d1da7bb582ba050"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
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
