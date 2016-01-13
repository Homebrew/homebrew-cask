cask 'macbreakz' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/MacBreakZ5.dmg'
  appcast 'http://www.publicspace.net/app/signed_mb5.xml',
          :checkpoint => '428bb1655624e06a7e0c450f6091d385c84ff3410153b38cc692abe5f73492f1'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'
  license :commercial

  app 'MacBreakZ 5.app'
end
