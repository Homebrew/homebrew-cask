cask :v1 => 'avidemux' do
  version '2.6.8'
  sha256 '2478fbdf6e7bfc32dd98a53bb95e6a7d217d294d446910942c4904bf2094b90a'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/avidemux/Avidemux_#{version}_ml_64bits.dmg"
  name 'Avidemux'
  homepage 'http://www.avidemux.org/'
  license :gpl

  app 'Avidemux2.6.app'
end
