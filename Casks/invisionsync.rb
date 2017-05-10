cask 'invisionsync' do
  version '1.8.5,686'
  sha256 '14d79e7ba4d8e91e2dddad38354110f53e42195dddb93a435d3d545ccffa1173'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.after_comma}.zip"
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          checkpoint: '2be291f642b6bc9d21eb222a48cceaac1ef1e7f82e64541578c8f43b2bfd1755'
  name 'InVision Sync'
  homepage 'https://www.invisionapp.com/'

  app 'InVisionSync.app'
end
