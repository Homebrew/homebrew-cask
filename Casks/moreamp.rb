cask :v1 => 'moreamp' do
  version '0.1.28'
  sha256 '2f07c82bb5b29e12185cd35c3f3cd9c472e8cc837fe426af1c82af9428c89695'

  url "https://downloads.sourceforge.net/project/moreamp/moreamp/MoreAmp-#{version}/MoreAmp-#{version}-binOSXintel.dmg"
  homepage 'http://sourceforge.net/projects/moreamp/'
  license :oss

  app 'MoreAmp.app'
end
