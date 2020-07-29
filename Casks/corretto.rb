cask "corretto" do
  version "11.0.8.10.1"
  sha256 "d87c677c3f2d5b323112aa8e028cd4dbaad0e37fb378ffac87f7e447996476cb"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://corretto.aws/downloads/latest/amazon-corretto-11-x64-macos-jdk.pkg"
  name "Amazon Corretto"
  homepage "https://corretto.aws/"

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
