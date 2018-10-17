cask 'pacifist' do
  if MacOS.version <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.6.1'
    sha256 'a884c8c0d16ca159bf7f90064247d7c00f4ebbd54ac86028bb57c0cbf666cf2a'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'

  auto_updates true
  depends_on macos: '>= :tiger'

  app 'Pacifist.app'
end
