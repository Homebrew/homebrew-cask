cask 'bookwright' do
  version '1.1.147'
  sha256 '850219dca84ec3e86cb9c8144b56fc9e0ad2862105e4d5f3feac9eddc597e719'

  url "http://downloads.blurb.com/bookwright_v2/#{version}/BookWright.dmg"
  name 'BookWright'
  homepage 'https://www.blurb.com/bookwright'

  app 'BookWright.app'
end
