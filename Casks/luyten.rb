cask 'luyten' do
  version '0.4.9'
  sha256 'f5c37211501f00e5cb86623f7e2ab4ccaa07416bf2f5b067ac19846cad3b59c0'

  # github.com/deathmarine/Luyten was verified as official when first introduced to the cask
  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}/luyten-OSX-#{version}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom',
          checkpoint: 'a3088d3278005021feb872e4d0f14767da2d32d1db73e851e2d9b3bbadc16ee8'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'

  app 'Luyten.app'
end
