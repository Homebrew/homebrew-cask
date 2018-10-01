cask 'mimolive' do
  version '4.4-26484'
  sha256 'd863e09c5c8a5eb9cd5692d9cc9127de0bf2e3aa38917fcb906f050cef09567b'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
