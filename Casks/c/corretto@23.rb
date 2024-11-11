cask "corretto@23" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.1.8.1"
  sha256 arm:   "e2dcec4187cc5721563e489ee735720a122e3c202f3305e7dd692a1b2653ef6a",
         intel: "9ae2c5011c646fbb3096742e3058916ee8920de8389a86dbebc221425b8d0755"

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
