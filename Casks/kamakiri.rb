cask :v1 => 'kamakiri' do
  version :latest
  sha256 :no_check

  url 'https://mochidev.com/appresources/downloads/Kamakiri%20Latest.zip'
  homepage 'https://mochidev.com/apps/kamakiri'
  license :unknown    # todo: improve this machine-generated value

  app 'Kamakiri.app'
end
