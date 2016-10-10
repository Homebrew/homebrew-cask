cask 'geniego' do
  version :latest
  sha256 :no_check

  # directv.vo.llnwd.net was verified as official when first introduced to the cask
  url 'http://directv.vo.llnwd.net/e4/nomad/MACOS-client.dmg'
  name 'DIRECTV GenieGO'
  homepage 'http://www.directv.com/technology/geniego'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'Nomad.app', target: 'GenieGO.app'
end
