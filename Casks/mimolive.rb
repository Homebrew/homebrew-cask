cask 'mimolive' do
  version '3.1-23321'
  sha256 '8f6ab66d1c41af9c9f70ac006e5e83c560a558f429d89e7784a22e8f9364b5dd'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive',
          checkpoint: '04a7a26aa4b3f38c8fbe6b9385f9894a8e1faee099be1010f6b9f6bf9d6e37ee'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :yosemite'

  app 'mimoLive.app'
end
