cask 'mendeley' do
  version '1.17.11'
  sha256 '5f953c5e6d68216d4cc14e8375ab8a3639dc2fc9e91ab9233248439de7897495'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
