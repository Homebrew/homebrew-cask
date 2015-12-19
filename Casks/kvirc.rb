cask 'kvirc' do
  version '4.2.0'
  sha256 'bb450b5abc2012cfc6c3f2cce3c8b13239acad4553cdd73d48f8d47dd8cf61c2'

  # tradebit.com is the official download host per the vendor homepage
  url "http://kvirc.tradebit.com/#{version}/binary/osx/KVIrc-#{version}-Equilibrium.dmg"
  name 'KVIrc'
  homepage 'http://www.kvirc.net'
  license :gpl

  app 'KVIrc.app'
end
