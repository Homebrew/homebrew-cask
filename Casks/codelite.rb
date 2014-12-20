cask :v1 => 'codelite' do
  version :latest
  sha256 :no_check

  url 'http://downloads.codelite.org/downloads.php?osx'
  homepage 'http://codelite.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'codelite.app'
end
