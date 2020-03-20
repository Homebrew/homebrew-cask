cask 'izip' do
  version '3.7'
  sha256 '7be4dbc10384072058e56164b3a58a5164127e556e4a343a3acc14fd6f8104ba'

  url 'https://www.izip.com/izip.dmg'
  appcast 'https://www.izip.com/download'
  name 'iZip'
  homepage 'https://www.izip.com/'

  app 'iZip.app'
end
