cask :v1 => 'bandage' do
  version '0.6.0'
  sha256 '07f44812a6a565dae4b0432d12c8a5414de188030ac223867d9b27eb12b854d3'

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
