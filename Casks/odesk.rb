cask :v1 => 'odesk' do
  version :latest
  sha256 :no_check

  url 'https://www.odesk.com/downloads/mac/minor/oDeskTeam.dmg'
  homepage 'https://www.odesk.com/'
  license :unknown

  app 'oDesk Team.app'
end
