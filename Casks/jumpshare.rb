cask 'jumpshare' do
  version '2.1.2'
  sha256 '4745d9aa6902c902dd81eefdb1977b59da6687ce4040b0f3840f9c47ae0a3d48'

  url "https://apps.jumpshare.com/desktop/mac/Jumpshare-#{version}.zip"
  name 'Jumpshare'
  homepage 'https://jumpshare.com/'
  license :gratis

  app 'Jumpshare.app'
end
