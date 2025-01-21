cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.14.7.1"
  sha256 arm:   "e168900460d2bb6c887d3a9e90918f2d2568d58e4da17cb208318176c804cc1f",
         intel: "95e69ee7e99bb59c3324f5842a7ac0eec0c81adbf0fcaed86ac7b42f475f34e1"

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
