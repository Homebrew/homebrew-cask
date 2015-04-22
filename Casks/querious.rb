cask :v1 => 'querious' do
  version :latest
  sha256 :no_check

  url 'http://www.araelium.com/querious/downloads/Querious.dmg'
  appcast 'https://store.araelium.com/updates/querious'
  name 'Querious'
  homepage 'http://www.araelium.com/querious/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Querious.app'
end
