cask :v1 => 'amethyst' do
  version '0.9.4'
  sha256 'c9fb397dffdc77422ee8da363a6f1dee25562d9c1186b10260255f6a7ad50a23'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'http://ianyh.github.io/Amethyst/appcast.xml',
          :sha256 => '483c803029845953a1d93aa93f7ba2856d0cf1ca5a246d7d98b61508f7b09ff8'
  homepage 'http://ianyh.com/amethyst'
  license :oss

  app 'Amethyst.app'
end
