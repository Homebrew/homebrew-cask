cask :v1 => 'amazon-workdocs' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d28gdqadgmua23.cloudfront.net/mac/Amazon%20WorkDocs.pkg'
  name 'Amazon WorkDocs'
  homepage 'https://aws.amazon.com/workdocs/'
  license :gratis

  pkg 'Amazon WorkDocs.pkg'

  uninstall :pkgutil => 'com.amazon.aws.AmazonWorkDocs'
end
