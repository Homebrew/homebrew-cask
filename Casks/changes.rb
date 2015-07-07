cask :v1 => 'changes' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://bitbq_changes.s3.amazonaws.com/changes.zip'
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
