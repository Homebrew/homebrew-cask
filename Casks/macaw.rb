cask :v1 => 'macaw' do
  version '1.5.9'
  sha256 '390a052022e92289a9c8ef2973e91d7f6928ff88eb3702f0feebe52c8036a717'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          :sha256 => '33dff9f8acedaf8d8213e5d88b18219fc2686f38d32b42dae6a55ace3dc917ad'
  homepage 'http://macaw.co/'
  license :unknown    # todo: improve this machine-generated value

  app 'Macaw.app'
end
