cask 'hostr' do
  version '0.8.0'
  sha256 '89e8b6a4d0168fb05520ff9ac1f69d378dade59a883034aaa549398c039faeed'

  url "https://hostr.co/apps/mac/Hostr-#{version}.zip"
  appcast 'https://hostr.co/updaters/mac.xml',
          checkpoint: '5c98bdf298b336c3f61761f0ae0aca5d71e52b2293959508eb0afc611516501d'
  name 'Hostr'
  homepage 'https://hostr.co/'

  app 'Hostr.app'
end
