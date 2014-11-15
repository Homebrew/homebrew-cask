cask :v1 => 'copy' do
  version :latest
  sha256 :no_check

  url 'https://copy.com/install/mac/Copy.dmg'
  homepage 'https://www.copy.com/'
  license :unknown

  app 'Copy.app'
end
