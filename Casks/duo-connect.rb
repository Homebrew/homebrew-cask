cask 'duo-connect' do
  version '1.1.0'
  sha256 '3cfefc97492681853fe310fc1622a095a6befc289151b7079e8ef3e406822e92'

  # dl.duosecurity.com was verified as official when first introduced to the cask
  url "https://dl.duosecurity.com/DuoConnect-#{version}.pkg"
  appcast 'https://duo.com/docs/duoconnect-notes'
  name 'DuoConnect'
  homepage 'https://guide.duo.com/duoconnect'

  depends_on macos: '>= :yosemite'

  uninstall pkgutil: 'com.duo.connect.bin'
end
