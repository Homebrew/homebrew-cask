cask 'mimecast' do
  version '2.9'
  sha256 'eab4d1617d3bb0ab86b195a52b6c60ca53022e97cb475ad4eb3d3e16aa668a09'

  # system.na3.netsuite.com was verified as official when first introduced to the cask
  url 'https://system.na3.netsuite.com/core/media/media.nl?id=57223086&c=601905&h=8cc4b2493f0770cef5f0'
  name 'Mimecast for Mac'
  homepage 'https://community.mimecast.com/community/knowledge-base/mimecast-for-mac'

  depends_on macos: '>= :yosemite'

  app 'Mimecast.app'

  zap trash: [
               '~/Library/Preferences/com.mimecast.Mimecast-Mail.plist',
               '~/Library/com.mimecast.Mimecast-Mail',
               '~/Library/Logs/Mimecast',
             ]
end
