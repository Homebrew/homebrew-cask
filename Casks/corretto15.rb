cask "corretto15" do
  version "15.0.0.36.1"
  sha256 "80e0c93299bfd36bd325d9b40aab8531a5d1d860338a9d54e574180f02a4502d"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://corretto.aws/downloads/latest/amazon-corretto-15-x64-macos-jdk.pkg"
  name "AWS Corretto 15 JDK"
  desc "AWS Corretto 15 JDK"
  homepage "https://corretto.aws/"

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
