cask :v1 => 'qtpass' do
  version :latest
  sha256 :no_check

  url 'https://annejan.com/media/qtpass.dmg'
  name 'QtPass'
  homepage 'http://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
