cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.0.35.1"
  sha256 arm:   "fdfec72e9f46a667f8ded693baf2f2d1b9fbf95e312d9d1a9ebdb9b2ed622a36",
         intel: "c1d911d627b982d325c91b346c2b7b598238a091357946350a771bfad5d4601b"

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
