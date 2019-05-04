cask 'clix' do
  version '2.4.0.0'
  sha256 '286361c88e11cb8c308ce97236ac04b6b328b6f3eead51057d22c3fa82db4006'

  url 'ftp://rixstep.com/CLIX.zip'
  name 'CLIX'
  homepage 'https://rixstep.com/4/0/clix/'

  app "CLIX/#{version.no_dots}/CLIX.app"

  preflight do
    set_permissions "#{staged_path}/CLIX/#{version.no_dots}/CLIX.app", '0755'
  end

  postflight do
    set_permissions "#{appdir}/CLIX/#{version.no_dots}/CLIX.app", '0700'
  end
end
