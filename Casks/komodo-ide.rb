cask :v1 => 'komodo-ide' do
  version '9.3.0-88117'
  sha256 'f3e97a5b57b91e524a41f0dac11df991d19ed5ff81f33e26602b7be8bb2935a3'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'
  license :commercial

  app 'Komodo IDE 9.app'
end
