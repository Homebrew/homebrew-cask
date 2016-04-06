cask 'pencil' do
  version '2.0.18'
  sha256 'dfddc7a5b7b781eed0cd8dc998656421e2d86eddb1068fe227cc85e04c7ab520'

  url "https://github.com/prikhi/pencil/releases/download/v#{version}/Pencil-#{version}-mac-osx.zip"
  name 'Pencil'
  homepage 'https://github.com/prikhi/pencil'
  license :gpl

  app 'Pencil.app'
end
