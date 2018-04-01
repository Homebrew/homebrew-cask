cask 'bookwright' do
  version '1.2.172'
  sha256 '521b68716673250609977dd9042b0cde601c14692395a66b4d181140be4a19fc'

  url "http://downloads.blurb.com/bookwright_v2/#{version}/BookWright.dmg"
  name 'BookWright'
  homepage 'https://www.blurb.com/bookwright'

  app 'BookWright.app'
end
