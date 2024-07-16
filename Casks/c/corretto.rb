cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.2.9.1"
  sha256 arm:   "bc8baf44d0dbfdb573cb7d1fd291fc156ba3f9adefff2381f0acc153ae02294d",
         intel: "e8ffd18e4472b2fe9d971ca22d77f39adf477f309440ab86e1f43deac336c477"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  # No zap stanza required
end
