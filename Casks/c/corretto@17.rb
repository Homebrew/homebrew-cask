cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.17.10.1"
  sha256 arm:   "adc66d1cdd597a59b065abc059bcf51d3f71c2df2d1e78b2a00bda65898544f6",
         intel: "08b4c11575e80127bbbdcdaa881cdbcc216b2f759228044dc295c3ad78b063c5"

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
