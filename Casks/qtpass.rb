cask :v1 => 'qtpass' do
  version '0.8.2'
  sha256 '9554467da77977b1b6b8f200c8293105cfe2690d107d83cf26e592e7b1c1568a'

  url 'https://annejan.com/media/qtpass.dmg'
  name 'QtPass'
  homepage 'http://qtpass.org/'
  license :oss
  app 'QtPass.app'
end
