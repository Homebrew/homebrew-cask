cask "corretto@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.25.9.1"
  sha256 arm:   "5b26b4f191385671c89b23a46fab070c4dac978c32ecb9581b4c21a7cdef28de",
         intel: "41ce2ab63027ad156002e27d9cfed0e99cac27360d132a33d60ef1113b112194"

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
