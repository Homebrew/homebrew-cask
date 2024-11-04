cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.5.11.1"
  sha256 arm:   "e0673d60b5a7cdd8cfabc646b51cc15c4906beaefd51b96588c0a6de915e5f45",
         intel: "68e2623db7550bd608872348427ed15109ab1d58f777487e66e8e389d2f8bf34"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(/amazon[._-]corretto[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
