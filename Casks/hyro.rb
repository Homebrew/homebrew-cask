cask 'hyro' do
  version '0.0.4'
  sha256 'e7385f9ca4991ecd3152555651a9fb4bd177334b22f86115ed69ca98edb6d934'

  url "https://jawerty.github.io/Hyro/apps/Hyro-#{version}.dmg"
  appcast 'https://jawerty.github.io/Hyro/'
  name 'Hyro'
  homepage 'https://jawerty.github.io/Hyro/'

  app 'Hyro.app'
end
