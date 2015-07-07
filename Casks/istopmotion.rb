cask :v1 => 'istopmotion' do
  version '3.2.2-15432'
  sha256 '080c56eb60094247855be2a8b16a89f23741fb5fe2bb06ade13d31d8ff2ed9fc'

  url "https://cdn.boinx.com/software/istopmotion/Boinx_iStopMotion_#{version}.app.zip"
  name 'iStopMotion'
  homepage 'https://www.boinx.com/istopmotion/mac/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStopMotion 3.app'
end
