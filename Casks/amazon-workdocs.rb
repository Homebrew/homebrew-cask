cask "amazon-workdocs" do
  version "1.2.200287.0"
  sha256 :no_check

  url "https://d28gdqadgmua23.cloudfront.net/mac/Amazon%20WorkDocs.pkg",
      verified: "d28gdqadgmua23.cloudfront.net/"
  appcast "https://d28gdqadgmua23.cloudfront.net/mac/appcast/appcast-workdocs-prod.xml"
  name "Amazon WorkDocs"
  homepage "https://aws.amazon.com/workdocs/"

  pkg "Amazon WorkDocs.pkg"

  uninstall signal:  ["TERM", "com.amazon.AmazonWorkDocs"],
            pkgutil: "com.amazon.aws.AmazonWorkDocs"
end
