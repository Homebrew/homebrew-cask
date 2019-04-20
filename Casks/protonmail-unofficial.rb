cask 'protonmail-unofficial' do
  version '1.0.0'
  sha256 '33d6e5006c3b16b3c10386b5a41e7c773d710854b9eaae46a75a13d17d1ec7ec'

  url "https://github.com/protonmail-desktop/application/releases/download/v#{version}/protonmail-desktop-#{version}.dmg"
  appcast 'https://github.com/protonmail-desktop/application/releases.atom'
  name 'Protonmail Desktop'
  homepage 'https://github.com/protonmail-desktop/application'

  app 'Protonmail Desktop.app'
end
