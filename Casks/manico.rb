cask 'manico' do
  version '2.1-348'
  sha256 '20554c7a488547ac07caa7d94f0270692fcae22916ec5920fd80aba36f7a4df5'

  url "https://manico.im/static/Manico_#{version}.tar.gz"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: '11706b256b0d3382cf6c8c6ccd73631865bcc51c140e2f394028d7b585421279'
  name 'Manico'
  homepage 'https://manico.im/'
  license :commercial

  app 'Manico.app'

  zap delete: [
                '~/Library/Containers/im.manico.Manico',
              ]
end
