cask :v1 => 'logoist' do
  version :latest
  sha256 :no_check

  url 'http://www.syniumsoftware.com/download/logoist.dmg'
  homepage 'http://www.syniumsoftware.com/logoist/'
  license :unknown    # todo: improve this machine-generated value

  app 'Logoist.app'
end
