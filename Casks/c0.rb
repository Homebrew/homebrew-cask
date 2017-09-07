cask 'c0' do
  version '0.1.0'
  sha256 '593ed4ca0df3dc4111b65330ff56a3e02867ff1f3ef48aaf977e582fe8987363'

  url "https://github.com/smdls/C0/releases/download/v#{version}/C0-#{version}.dmg"
  appcast 'https://github.com/smdls/C0/releases.atom',
          checkpoint: 'efdb309378d49e6788a6350d483c19362f3fe7d3503ea3ef20730b337adf183c'
  name 'C0'
  homepage 'https://github.com/smdls/C0'

  app 'C0.app'

  zap delete: [
                '~/Library/Application Scripts/smdls.C0',
                '~/Library/Containers/smdls.C0',
              ]
end
