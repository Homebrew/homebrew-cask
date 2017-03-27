cask 'playcode' do
  version '1.0.2'
  sha256 'ebe92b0bd12e5107c58eee313e74118ac039b53eafeb3015131a4ecddcaeacb3'

  url "https://github.com/Meadowcottage/playcode-desktop/releases/download/#{version}/Playcode-#{version}.dmg"
  appcast 'https://github.com/Meadowcottage/playcode-desktop/releases.atom',
          checkpoint: '676d94807bc06a119deb2b77967acb5264554b9a5681d4d83d813d73a1d8f7af'
  name 'Playcode'
  homepage 'https://github.com/Meadowcottage/playcode-desktop/'

  app 'Playcode.app'
end
