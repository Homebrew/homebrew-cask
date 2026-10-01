cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.504.04.1"
  sha256 arm:   "0c7d83775c09cb2f16180099ac4e772a0298fa6f02597204450642df8a22f9c8",
         intel: "9454f8fc229e056364cd3fb0dd198a12a0a98289063260409fa6747a112efc30"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
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
