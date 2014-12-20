cask :v1 => 'logoist' do
  version :latest
  sha256 :no_check

  url 'http://www.syniumsoftware.com/download/logoist.dmg'
  homepage 'http://www.syniumsoftware.com/logoist/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Logoist.app'
end
