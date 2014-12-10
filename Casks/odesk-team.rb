cask :v1 => 'odesk-team' do
  version :latest
  sha256 :no_check

  url 'https://www.odesk.com/downloads/mac/minor/oDeskTeam.dmg'
  homepage 'https://www.odesk.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'oDesk Team.app'
end
