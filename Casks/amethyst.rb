cask :v1 => 'amethyst' do
  version '0.9.4'
  sha256 'c9fb397dffdc77422ee8da363a6f1dee25562d9c1186b10260255f6a7ad50a23'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'http://ianyh.com/amethyst/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
