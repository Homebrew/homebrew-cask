cask 'geniego' do
  version :latest
  sha256 :no_check

  url 'http://directv.vo.llnwd.net/e4/nomad/MACOS-client.dmg'
  name 'DIRECTV GenieGO'
  homepage 'http://www.directv.com/technology/geniego'
  license :closed

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'Nomad.app', target: 'GenieGO.app'
end
