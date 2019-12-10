cask 'jubler' do
  version '7.0.0-alpha1'
  sha256 'a3028e4a9a3a345b5f6d8bca6fa6d56527fe5a8721bb9f3ff10417d42096aa85'

  # github.com/teras/Jubler was verified as official when first introduced to the cask
  url "https://github.com/teras/Jubler/releases/download/v#{version}/Jubler-#{version}.dmg"
  appcast 'https://github.com/teras/Jubler/releases.atom'
  name 'Jubler'
  homepage 'https://www.jubler.org/'

  app 'Jubler.app'
end
