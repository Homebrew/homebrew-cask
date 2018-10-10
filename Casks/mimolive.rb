cask 'mimolive' do
  version '4.4.1-26514'
  sha256 '4d7ff866e6c1044d99cedd61d72792d6d2af672635ec6fc91f242741906bf4b0'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
