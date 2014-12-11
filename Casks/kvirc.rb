cask :v1 => 'kvirc' do
  version '4.2.0'
  sha256 'bb450b5abc2012cfc6c3f2cce3c8b13239acad4553cdd73d48f8d47dd8cf61c2'

  url "http://kvirc.tradebit.com/#{version}/binary/osx/KVIrc-#{version}-Equilibrium.dmg"
  homepage 'http://www.kvirc.net'
  license :unknown    # todo: improve this machine-generated value

  app 'KVIrc.app'
end
