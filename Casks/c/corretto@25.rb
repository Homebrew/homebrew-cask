cask "corretto@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.0.9"
  sha256 arm:   "2fa858924d990520d9f24fb4c51a352760ed6bf7068cf5c5cccccb9bc6cae824",
         intel: "412d1cb180414691a1df65fc8cce144a4b53a6a8afad2af450ad085cc7a04cec"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(/amazon[._-]corretto[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :header_match
  end

  depends_on :macos

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
