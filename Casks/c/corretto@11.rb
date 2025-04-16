cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.27.6.1"
  sha256 arm:   "fcf184611f98e303c53e4c942b8742d5cff01e6cb9c7876011e6b12651a0062a",
         intel: "ad2d8d50b40b3c4435fb4cd210a96a55ab916a87065a44b2a6af1b36b3519f71"

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
