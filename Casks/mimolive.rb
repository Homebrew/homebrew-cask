cask 'mimolive' do
  version '4.0.1-24864'
  sha256 'd12ea1ec1b4d7796b0d46c06a7173b6f8a45a362fc8667626dbe8239d1a93a3f'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive',
          checkpoint: '83df3181b727687306071420c961f616d5556b21c58d61d0f6dc61c652502505'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
