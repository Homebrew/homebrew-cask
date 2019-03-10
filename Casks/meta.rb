cask 'meta' do
  version '1.9.2'
  sha256 '05adea70f207c286656944e7513999ba445e3b80cb1516c1cfcd61ba05700986'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
