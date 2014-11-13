cask :v1 => 'carbon-copy-cloner' do
  version '4.0.3274'
  sha256 '7d6479cd68ba9e8f9e0a74b2426d38c99ad3dea1c3a29dd7aaad8d8854d8a753'

  url "http://bombich.com/software/files/ccc-#{version}.zip"
  appcast 'http://www.bombich.com/software/updates/ccc.php',
          :sha256 => 'ec02ebdd3e4bee0527d46e8256372249780fb1a4fb93ddb782e9da87787bbdff'
  homepage 'http://bombich.com/'
  license :unknown

  app 'Carbon Copy Cloner.app'
end
