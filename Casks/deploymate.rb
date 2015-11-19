cask :v1 => 'deploymate' do
  version '1.2.9'
  sha256 '0e2be785a35b9264791ad8bf5a3580b61cff446c0f0fa498ff3e12faaf9ce10e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.delete('.')}.zip"
  appcast 'http://www.deploymateapp.com/deploymate-updates.xml',
          :sha256 => '03ce137e3e8dc6e8e29b79c1d2a8733a653f7d68af48e32c35172a78291f4ce7'
  name 'Deploymate'
  homepage 'http://www.deploymateapp.com'
  license :commercial

  app 'Deploymate.app'

  zap :delete => [
                  '~/Library/Caches/com.ivanvasic.deploymate',
                  '~/Library/Preferences/com.ivanvasic.deploymate.plist',
                  '~/Library/Preferences/com.ivanvasic.deploymate.LSSharedFileList.plist'
                 ]
end
