cask 'pacifist' do
  if MacOS.version <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.12'
    sha256 '23a68a4834f799c3f90554e837e256734403ba3301f8c9c23e55b3d46207d7ff'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          checkpoint: '758b20da3f8f2a3e2c639d557b8f121f3432e7d71970441546ae6e054ca9de2b'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'

  depends_on macos: '>= :tiger'

  app 'Pacifist.app'
end
