cask :v1 => 'kamakiri' do
  version :latest
  sha256 :no_check

  url 'https://mochidev.com/appresources/downloads/Kamakiri%20Latest.zip'
  name 'Kamakiri'
  homepage 'https://mochidev.com/apps/kamakiri/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Kamakiri.app'
end
