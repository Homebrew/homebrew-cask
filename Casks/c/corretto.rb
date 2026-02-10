cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.2.10.1"
  sha256 arm:   "cee9506927e1fb798aedd2d488f3961c43c0b3766a259fb8fd03c18b6cd66f24",
         intel: "2c21446eec58bf80d8cfbf3c002a8d50a4077960e193d74fdc024f5f4c9dd7e8"

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
