cask "corretto@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.492.09.1"
  sha256 arm:   "38a43225b2e211984fb6458e9d79c27f2bfffc24f8efa0ba92a252672cb00343",
         intel: "1f579b712677fa8245f67e8e8d6a96c1c00e6d343e1414b9d70ceaf839934b93"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
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
