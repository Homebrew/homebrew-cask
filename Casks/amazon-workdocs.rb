cask "amazon-workdocs" do
  version "1.2.203.37"
  sha256 "c97c669e2982009115e51602b7ad801b4801d0b44df9283c7492f6b1405fc5d0"

  # d28gdqadgmua23.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d28gdqadgmua23.cloudfront.net/mac/Amazon%20WorkDocs.pkg"
  appcast "https://d28gdqadgmua23.cloudfront.net/mac/appcast/appcast-workdocs-prod.xml"
  name "Amazon WorkDocs"
  homepage "https://aws.amazon.com/workdocs/"

  pkg "Amazon WorkDocs.pkg"

  uninstall signal:  ["TERM", "com.amazon.AmazonWorkDocs"],
            pkgutil: "com.amazon.aws.AmazonWorkDocs"
end
