cask 'audiomate' do
  version '2.2.5'
  sha256 '19ee6305cb796b07b2d1ebdfcdaa17ae3b6c50ceceb88bdc71ef21a844bc702e'

  # 9labs.io is the official download host per the vendor homepage
  url "http://backend.9labs.io/download/audiomate?version=#{version}"
  appcast 'https://backend.9labs.io/appcast/audiomate',
          checkpoint: '5f42d2f69fbf740f4220402637caffc2bad7be0031f66f56d44c3e62d1718db5'
  name 'AudioMate'
  homepage 'https://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'

  postflight do
    suppress_move_to_applications
  end
end
