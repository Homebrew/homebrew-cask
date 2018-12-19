cask 'leonardo' do
  version :latest
  sha256 :no_check

  # marginsoftware.de was verified as official when first introduced to the cask
  url 'https://marginsoftware.de/downloads/leonArdo-osx.dmg'
  name 'leonArdo'
  homepage 'https://margin.de/'

  app 'leonArdo.app'
end
