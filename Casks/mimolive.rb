cask 'mimolive' do
  version '2.8.2-23030'
  sha256 '4d01e27e13f08ba8e2b66f7e6cb40ce18f5dece9eb74f8aecb3a3c9fe4dc7d08'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect//histories/mimolive',
          checkpoint: 'a186666c7cb22f69342d5e95fa966069e2ce30db32ace8c79972a005d708026d'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :yosemite'

  app 'mimoLive.app'
end
