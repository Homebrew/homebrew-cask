cask "corretto" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18.0.2.9.1"

  if Hardware::CPU.intel?
    sha256 "4534fc0e2b6d1b06cc9a127552b5acd395a68a4df0dc95bf08154313f2508337"
  else
    sha256 "8c8aaf1a639f78647eec88699bf4bc9b0aab230407042ee12602b4e4c5c9f04d"
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
