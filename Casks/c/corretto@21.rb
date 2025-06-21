cask "corretto@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.7.6.1"
  sha256 arm:   "549c33af2f04eb2a925e28b963f2556dfc86da7f6a2cdda14368ec8c43d388e2",
         intel: "c1906f9e67235ec51e639260a1f9c969c46c2a5f17919d9f047890266969f207"

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
