cask "corretto" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.1.12.1"

  if Hardware::CPU.intel?
    sha256 "2a02920fe5a4d8dc0691308bc910a13a8e4a67d729ae9e99d973d8bf655f8ac2"
  else
    sha256 "dc03bfb1124415dc0c04cf49cc506f6d333ee273c3890e3f90571a3ce93efc3f"
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
