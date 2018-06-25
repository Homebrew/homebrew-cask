cask 'mendeley' do
  version '1.19.1'
  sha256 '598da54e99faa77e1427fcb8597bf89c34993a2d45d3b35dcb85fa27223915a8'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
