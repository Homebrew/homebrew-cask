cask :v1 => 'raven' do
  version '0.2.0-alpha'
  sha256 '91792dfbe2abbc13f79bcafbe903e697f99b5abccfa900084b015e2c642eb633'

  url "https://github.com/robotlolita/raven/releases/download/v#{version}/Raven-osx.zip"
  name 'Raven'
  homepage 'http://robotlolita.me/raven/'
  license :mit

  app 'Raven.app'
end
