cask 'amazon-workdocs' do
  version :latest
  sha256 :no_check

  # d28gdqadgmua23.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d28gdqadgmua23.cloudfront.net/mac/Amazon%20WorkDocs.pkg'
  name 'Amazon WorkDocs'
  homepage 'https://aws.amazon.com/workdocs/'

  pkg 'Amazon WorkDocs.pkg'

  uninstall pkgutil: 'com.amazon.aws.AmazonWorkDocs'
end
