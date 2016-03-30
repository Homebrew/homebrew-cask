cask 'opera-mail' do
  version '1.0'
  sha256 'afd192e308f8ea8ddb3d426fd6663d97078570417ee78b8e1fa15f515ae3d677'

  url "https://get-ash-1.opera.com/pub/opera/mail/#{version}/mac/Opera-Mail-#{version}-1040.i386.dmg"
  name 'Opera Mail'
  homepage 'http://www.opera.com/computer/mail'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Mail.app'
end
