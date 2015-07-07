cask :v1 => 'komodo-edit' do
  version '9.0.1-15745'
  sha256 '39dc064cead52b3de0cab8f499867d26e1e8feeeca91488c00cd72ceb9d31089'

  # activestate.com is the official download host per the vendor homepage
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'http://komodoide.com/komodo-edit'
  license :mpl

  app 'Komodo Edit 9.app'
end
