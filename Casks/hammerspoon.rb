cask :v1 => 'hammerspoon' do
  version '0.9.41'
  sha256 '83237ff824b7b30904ff8f566a3d34431e48dca442844be16ea43b52d2aa50b3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
