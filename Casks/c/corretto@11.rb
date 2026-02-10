cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.30.7.1"
  sha256 arm:   "f5addaf5e6351e17ef88c7f7afb1ef571f41bd77444b4d0afef16333d5366e8f",
         intel: "ff050df95529417b75f44e0a06b9f47f61f3dc462bd10c024b45364ff2b240ee"

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
