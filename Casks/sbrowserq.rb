cask 'sbrowserq' do
  version '3.4'
  sha256 '06e126cfcc80e2442260c291508b82d6a2d722246f51e7b795b15534ec4b7f93'

  url "http://park.geocities.jp/sbrowser_q/SbrowserQ_V#{version}_mac.dmg"
  name 'SbrowserQ'
  homepage 'http://park.geocities.jp/sbrowser_q/'

  app 'SbrowserQ.app'
end
