cask 'mimolive' do
  version '4.3-26305'
  sha256 'c1fb8ee47e4b8382c7a31fa490673c61fe3616b0bf5cfb8ac60fbfa41983f94b'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
