cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.26.4.1"
  sha256 arm:   "cede642e444e10c50b0834b1dc2388c14e17198caf2a6ee204ee6316d8c506a6",
         intel: "b84b79e483a5df572811e675677dfcf180cfde9f6fddcd55df0b525c66f71389"

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
