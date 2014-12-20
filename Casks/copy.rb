cask :v1 => 'copy' do
  version :latest
  sha256 :no_check

  url 'https://copy.com/install/mac/Copy.dmg'
  homepage 'https://www.copy.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Copy.app'
end
