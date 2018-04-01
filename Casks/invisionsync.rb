cask 'invisionsync' do
  version '1.8.5,686'
  sha256 '14d79e7ba4d8e91e2dddad38354110f53e42195dddb93a435d3d545ccffa1173'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.after_comma}.zip"
  name 'InVision Sync'
  homepage 'https://www.invisionapp.com/'

  app 'InVisionSync.app'
end
