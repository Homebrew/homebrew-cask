cask 'retini' do
  version :latest
  sha256 :no_check

  # github.com/terwanerik/Retini was verified as official when first introduced to the cask
  url 'https://github.com/terwanerik/Retini/raw/master/Retini.zip'
  name 'Retini'
  homepage 'https://terwanerik.github.io/Retini/'

  app 'Retini.app'
end
