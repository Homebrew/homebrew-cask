cask :v1 => 'retini' do
  version :latest
  sha256 :no_check

  url 'https://github.com/terwanerik/Retini/raw/master/Retini.zip'
  name 'Retini'
  homepage 'http://terwanerik.github.io/Retini/'
  license :mit

  app 'Retini.app'
end
