cask 'imitone' do
  version '0.9.2a'
  sha256 'facbd3c2f252dd825ba1dde722d2c2a12b340adfa193a975965c0493481b2cd7'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/',
          checkpoint: '59102e59b3e16ec6ff79c87b2b2bbf090c027bab4d217c0d4a745c938f65b455'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
