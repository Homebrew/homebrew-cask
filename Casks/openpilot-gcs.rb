cask :v1 => 'openpilot-gcs' do
  version '15.02.01'
  sha256 '21f1db27188ad05cc755fdcdda97853bdd6ba6adfc09afe78095c414065d7da5'

  url "https://wiki.openpilot.org/download/attachments/361104/OpenPilot-RELEASE-#{version}-osx.dmg"
  name 'OpenPilot Ground Control Station'
  homepage 'https://wiki.openpilot.org/display/WIKI/OpenPilot+Downloads'
  license :gpl

  app 'OpenPilot GCS.app'
end
