cask "corretto" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.0.37.1"
  sha256 arm:   "a2438c48bed14b341752755e3342f1a30212bd23a12e97b356a2615da6ed3427",
         intel: "782c8e4a6cbb267ea4d6eaef50580f291fcb8d46f18354f4f229c1a1b997bf19"

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
