cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.482.08.1"
  sha256 arm:   "6cece709d738229f3ecae3400eb763220a7e38e0bb2dc89fef6c71258fc67c51",
         intel: "20fff505fbacff3ba10add1a796bf7770e899c15336f558d9a57466e40395e01"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
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
