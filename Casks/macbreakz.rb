cask :v1 => 'macbreakz' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/MacBreakZ5.dmg'
  appcast 'http://www.publicspace.net/app/signed_mb5.xml'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MacBreakZ 5.app'
end
