cask 'bookwright' do
  version '1.1.144'
  sha256 'd1c65259d4e7aec0aa001b7375fd380619d991c8ef5ddfbe2cf89a34bdcd3b46'

  url "http://downloads.blurb.com/bookwright_v2/#{version}/BookWright.dmg"
  name 'BookWright'
  homepage 'https://www.blurb.com/bookwright'

  app 'BookWright.app'
end
