cask :v1 => 'cpumeter' do
  version '1.0.3'
  sha256 'fbc7ce7aa2a744909919542dcf6018e3009906a34c239e5a7678536f4668341a'

  url 'https://github.com/fataio/cpumeter/blob/master/dist/cpumeter.zip?raw=true'
  name 'cpumeter'
  homepage 'https://github.com/fataio/cpumeter/'
  license :oss

  app 'cpumeter.app'
end
