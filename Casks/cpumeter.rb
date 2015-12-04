cask :v1 => 'cpumeter' do
  version :latest
  sha256 :no_check

  url 'https://github.com/panefordope/cpumeter/blob/master/dist/cpumeter.zip?raw=true'
  name 'cpumeter'
  homepage 'https://github.com/panefordope/cpumeter/'
  license :mit

  app 'cpumeter.app'
end
