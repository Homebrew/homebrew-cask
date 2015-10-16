cask :v1 => 'odesk-team' do
  version :latest
  sha256 :no_check

  url 'https://www.odesk.com/downloads/mac/minor/oDeskTeam.dmg'
  name 'oDesk Team'
  homepage 'https://www.odesk.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'oDesk Team.app'
end
