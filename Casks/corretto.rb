cask "corretto" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18.0.1.10.1"

  if Hardware::CPU.intel?
    sha256 "1ca515910ec5a7fbe24b77fcbba5ddbbba6a7c5c0dafbc85f193173bb4199088"
  else
    sha256 "bfdd9b2c41f51e1f536ac57f9416190a238fe56b5ff5dcbae2f8f5bcf941ddaf"
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
