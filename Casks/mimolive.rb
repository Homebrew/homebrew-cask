cask 'mimolive' do
  version '2.8.2-23030'
  sha256 '4d01e27e13f08ba8e2b66f7e6cb40ce18f5dece9eb74f8aecb3a3c9fe4dc7d08'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect//histories/mimolive',
          checkpoint: 'd4931f0307d990a4a33a0f8620ef1b81b9aafb0cf80ecadfb939581eafb3a35c'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :yosemite'

  app 'mimoLive.app'
end
