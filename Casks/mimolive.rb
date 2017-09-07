cask 'mimolive' do
  version '2.9.2-23125'
  sha256 '590fad1c33bf30a105ca78557a6c7defc376735acafb373970a2772cf72c8fb4'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive',
          checkpoint: '5b569a3ae5aaf8986b02d1e0188de9bf6f6c2ecc7b58991feea3298b2fe9b8a0'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :yosemite'

  app 'mimoLive.app'
end
