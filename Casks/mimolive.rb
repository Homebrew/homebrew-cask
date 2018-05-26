cask 'mimolive' do
  version '4.1-25475'
  sha256 '80deae64507c7f6ee3e3ab3a907470de9bf499e4acae85671d1957068116cad4'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive',
          checkpoint: '111086d7d4590aff9dcba3892e12312d01ab596769338bd3c3a49a8590596d57'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
