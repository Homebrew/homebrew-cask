class Adapter < Cask
  version '2.1.1'
  sha256 'e46706c1b64acc2cd927456ba03be5220c2bc406c4eacab6fdd28490fb452a94'

  url 'http://downloads.macroplant.com/Adapter-2.1.1.dmg'
  appcast 'http://www.macroplant.com/adapter/adapterAppcast.xml'
  homepage 'http://www.macroplant.com/adapter/'

  app 'Adapter.app'
end
