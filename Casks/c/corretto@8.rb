cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.442.06.1"
  sha256 arm:   "119d5b91de9cfb959a4a872914a274e43db321fc4df75f0a0f9f6fed516c5143",
         intel: "2ab83a9adee1fe38c50129e5e19cedf3b90edd574d9ee2b5e4a30b0677a00861"

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
