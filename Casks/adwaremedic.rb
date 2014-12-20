cask :v1 => 'adwaremedic' do
  version :latest
  sha256 :no_check

  url 'http://www.adwaremedic.com/AdwareMedic.dmg'
  homepage 'http://www.adwaremedic.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AdwareMedic.app'
end
