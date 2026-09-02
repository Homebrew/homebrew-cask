cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.32.10.1"
  sha256 arm:   "76f97250e4a2241d75dca7d0404f6d6d0662adf9b25c501e0d1097e38058894e",
         intel: "b0b7398f3ce03d3b08fbf21e9c733d3ebf21f1ad51b60f8b4cc85c879be26171"

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
