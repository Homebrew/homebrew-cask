cask 'macbreakz' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/MacBreakZ5.dmg'
  appcast 'http://www.publicspace.net/app/signed_mb5.xml',
          :sha256 => 'fe3142d353c2f724d8692ac7882a310ad7a9f97cd215b109366a1c441b4764a9'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'
  license :commercial

  app 'MacBreakZ 5.app'
end
