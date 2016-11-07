cask 'nuimo' do
  version '1.7.0'
  sha256 'e50c8f751b6944bdbe64f1c01e61d9c4d939fd63850bd4d112883aa46db10f3b'

  url "https://files.senic.com/nuimo-app-osx-#{version.dots_to_dashes}.zip"
  name 'Nuimo'
  homepage 'https://www.senic.com/en/app'

  auto_updates 'true'

  app 'Nuimo.app'
end
