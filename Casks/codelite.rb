cask :v1 => 'codelite' do
  version :latest
  sha256 :no_check

  url 'http://downloads.codelite.org/downloads.php?osx'
  homepage 'http://codelite.org'
  license :unknown    # todo: improve this machine-generated value

  app 'codelite.app'
end
