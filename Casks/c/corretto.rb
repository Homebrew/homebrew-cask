cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.2.13.1"
  sha256 arm:   "7767e44e1d2d387bd94bc5e2053ab32f0c4e340cb651ed923ff97b737ce31e01",
         intel: "d4848f84ce21a8db91aea58681ad34346fd7cac7fc06eefab22c374bed7c8c2e"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
