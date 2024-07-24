cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.24.8.1"
  sha256 arm:   "ef98479f69dc2d7d65280ba300541d7e24832d7b4837014885550b9442c23854",
         intel: "83dabdc4df6a7e661e4e7151475d50ea0f85d370ef445704f0c4095f0c471dcf"

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
