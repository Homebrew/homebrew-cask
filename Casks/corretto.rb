cask "corretto" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.2.8.1"

  if Hardware::CPU.intel?
    sha256 "8856ff07f1b225b7444bf30aea69963641ad18a27312ce2770512b1a4d5ced5b"
  else
    sha256 "182dd6a5064d5a4135b82bca6293f1d557d5c48ba64bf0e05c931153ba06802c"
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
