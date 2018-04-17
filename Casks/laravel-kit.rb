cask 'laravel-kit' do
  version '1.2.2'
  sha256 'afcf520e55cc6667b6247ecea762f11ac215d3bc467c3668d370d0cd1f14b2c2'

  url "https://github.com/tarequemdhanif/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip"
  appcast 'https://github.com/tarequemdhanif/laravel-kit/releases.atom',
          checkpoint: '767aea2c668d1d06f5712c2a062fab054d1c984d93e41c2154d1fa4b8396cd00'
  name 'Laravel Kit'
  homepage 'https://github.com/tarequemdhanif/laravel-kit'

  auto_updates true

  app 'Laravel Kit.app'
end
