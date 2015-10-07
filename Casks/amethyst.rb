cask :v1 => 'amethyst' do
  version '0.9.4'
  sha256 'c9fb397dffdc77422ee8da363a6f1dee25562d9c1186b10260255f6a7ad50a23'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'http://ianyh.com/amethyst/appcast.xml',
          :sha256 => 'd586f9c8349685faf900500b68baf24a7d67a44c8c96fdb021f71890d7c3561d'
  homepage 'http://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
