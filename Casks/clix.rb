cask 'clix' do
  version '2.4.0.0'
  sha256 '32f40de6feb59237078e0fd592d0354f5fadd537eddfe5737a211d93aee60ed7'

  url 'ftp://rixstep.com/CLIX.zip'
  name 'CLIX'
  homepage 'http://rixstep.com/4/0/clix/'

  app "CLIX/#{version.no_dots}/CLIX.app"

  preflight do
    set_permissions "#{staged_path}/CLIX/#{version.no_dots}/CLIX.app", '0755'
  end

  postflight do
    set_permissions "#{appdir}/CLIX/#{version.no_dots}/CLIX.app", '0700'
  end
end
