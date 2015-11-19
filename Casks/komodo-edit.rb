cask :v1 => 'komodo-edit' do
  version '9.3.0-16396'
  sha256 'f1c5a0c3542754b7f96db86547871b6fb70d205c2274a906a696b23194c75080'

  # activestate.com is the official download host per the vendor homepage
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'http://komodoide.com/komodo-edit'
  license :mpl

  app 'Komodo Edit 9.app'
end
