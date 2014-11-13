cask :v1 => 'retroshare' do
  version '0.5.5b'
  sha256 '24beb2e1087e7a93ba996030c0785cd9f3a575d3adc5dcfda0d58aab3b40aebe'

  url "https://downloads.sourceforge.net/project/retroshare/RetroShare/#{version}/Retroshare-V#{version}-svn6877_OSX10.6u.dmg"
  homepage 'http://retroshare.sourceforge.net/'
  license :oss

  app 'Retroshare.app'
end
