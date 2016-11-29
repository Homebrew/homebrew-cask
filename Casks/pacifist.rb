cask 'pacifist' do
  if MacOS.version <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.11'
    sha256 'db03c766c2fc48675f3fe7fbd3eee3377c6cc06baa35e9b35afe2a345e57d415'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          checkpoint: 'b7e5749bb2d009416a5a679a02a75453c7e1a641678cbb943e18712c45270e76'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'

  depends_on macos: '>= :tiger'

  app 'Pacifist.app'
end
