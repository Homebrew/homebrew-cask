cask 'nightowl' do
  version '0.2.9'
  sha256 '2d88d278a4eca193bff1334a11fe73a9f09242a0aad3a56d2dfdd4ec8eb8d492'

  url 'https://nightowl.kramser.xyz/files/NightOwl.dmg'
  appcast 'https://nightowl.kramser.xyz/'
  name 'NightOwl'
  homepage 'https://nightowl.kramser.xyz/'

  depends_on macos: '>= :mojave'

  app 'NightOwl.app'
end
