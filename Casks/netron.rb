cask 'netron' do
  version '2.0.0'
  sha256 'daeb9e1205d40d5bf5a8b31ea3c054965f4792fb401a871ace63edbf15452207'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
