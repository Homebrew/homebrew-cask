cask :v1 => 'iloc' do
  version '0.3'
  sha256 '3c9909b73ba4a17aef20cdc7efea2333d94f23fca2c87bc6c402bc4f17ce9ef3'

  url "http://derailer.org/iloc/iloc-#{version}.tgz"
  homepage 'http://derailer.org/iloc'
  license :unknown    # todo: improve this machine-generated value

  binary "iloc-#{version}/iloc"
end
