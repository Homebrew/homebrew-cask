cask :v1 => 'changes' do
  version '1.7.2'
  sha256 '2b0d0256284283b21ee5ef8175c5a70c8873215c416f3edfb6c698672abf486d'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://bitbq_changes.s3.amazonaws.com/changes-#{version}.zip"
  appcast 'https://bitbq_changes.s3.amazonaws.com/changes-production.xml'
  name 'Changes'
  homepage 'http://martiancraft.com/products/changes.html'
  license :commercial

  app 'Changes.app'
  binary 'Changes.app/Contents/Resources/chdiff'

  zap :delete => [
                  '~/Library/Preferences/com.bitbq.Changes.plist',
                  '~/Library/Application Support/Changes',
                  '~/Library/Caches/com.bitbq.Changes',
                 ]
end
