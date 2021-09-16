cask "corretto" do
  version "17.0.0.35.2"

  if Hardware::CPU.intel?
    sha256 "9363489f7fef6e109a977225e72dd5063d5e5dc5b1466f17f875eca4db8f4bae"
  else
    sha256 "64083bd91f60bb9481c61c9484aacbd59d6776bb5fb3229d3ea2c6a2236d0a8b"
  end

  arch_string = if Hardware::CPU.intel?
    "x64"
  else
    "aarch64"
  end

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch_string}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch_string}-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)*)-macosx-#{arch_string}\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch_string}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
