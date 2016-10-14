cask 'pacifist' do
  if MacOS.version < '10.3.0'
    version '2.0.1'
    sha256 '48e6ca4eb12601ef7f6c6e857c44b200e91986d0eac88c1ed5a06cfc029e3aae'
  elsif MacOS.version <= '10.4.10'
    version '2.6.4'
    sha256 '7f8cc69701e3a26122151eabe6fd5e4e631c033ed3403147f5963d28afab6caf'
  elsif MacOS.version <= '10.6.7'
    version '3.0.10'
    sha256 '86da910b133ac3b7a38d165624e2657f6286bcca76af98c80d3c34d5b3f3a851'
  elsif MacOS.version <= '10.7.5'
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

  app 'Pacifist.app'
end
