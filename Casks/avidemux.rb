cask :v1 => 'avidemux' do
  version '2.6.8'
  sha256 '2478fbdf6e7bfc32dd98a53bb95e6a7d217d294d446910942c4904bf2094b90a'

  url "https://downloads.sourceforge.net/avidemux/Avidemux_#{version}_ml_64bits.dmg"
  homepage 'http://www.avidemux.org/'
  license :oss

  app 'Avidemux2.6.app'
end
