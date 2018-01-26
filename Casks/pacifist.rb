cask 'pacifist' do
  if MacOS.version <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.6'
    sha256 'e0571facfaebb843327426c2a356beb4b8c537aebce3b83848a0887453562f8c'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          checkpoint: '7a416fcb387bab753bb583c1ac2d8d220da671c8fbfca1aac1f73e8d2834fb34'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'

  depends_on macos: '>= :tiger'

  app 'Pacifist.app'
end
