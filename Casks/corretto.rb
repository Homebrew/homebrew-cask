cask "corretto" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18.0.0.37.1"

  if Hardware::CPU.intel?
    sha256 "d1cad24f1216f54dff37e18b5146640bfae1a80de7c82db9162bbed1453e5ed9"
  else
    sha256 "397859f065314f21c9575aefe469e15576c4e1754b0e4c553b6fcbceaf23ce70"
  end

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
end
