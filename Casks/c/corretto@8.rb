cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.452.09.1"
  sha256 arm:   "2e1fd55e3545e62b2257e55e68d07ad9c76e053a1b1553653fec0cfef0bbadc8",
         intel: "790b8492a0969ef6c03771ccf11c01bfb3e032b519aa71be3a536a9a94bf76f4"

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
