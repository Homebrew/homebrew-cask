cask "corretto@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.15.6.1"
  sha256 arm:   "221aeb8b1952c6839558c634389cab2d4bbcab9f1d1f7034845fd5847466e589",
         intel: "63473b8ad77e377defe889b299108c1c2b0ae6662a130cf93d29a53652d9971e"

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
