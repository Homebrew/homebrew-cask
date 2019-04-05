cask 'greenfoot' do
  version '3.5.3'
  sha256 'c0ae05267c4493f067a103ac7eb4e6ad045279e0180d9b32907dfa9b61eab08e'

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  name 'Greenfoot'
  homepage 'https://www.greenfoot.org/home'

  app "Greenfoot #{version}/Greenfoot.app"
end
