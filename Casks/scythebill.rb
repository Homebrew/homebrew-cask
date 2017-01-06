cask 'scythebill' do
  version '13.4.1'
  sha256 '569b68ea9ba10216aab38320833fb3765c799f5b8b05da97ed67c4df21d12636'

  # amazonaws.com/downloads.scythebill.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.scythebill.com/Scythebill-#{version}.dmg"
  name 'Scythebill'
  homepage 'http://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
