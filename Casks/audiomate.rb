cask 'audiomate' do
  version '2.2.4'
  sha256 '0d4f6d62cd4f1f243274cbd0a616bd5167dad2e07b643d8a49eb8ebfeeab76e1'

  # 9labs.io is the official download host per the vendor homepage
  url "http://backend.9labs.io/download/audiomate?version=#{version}"
  appcast 'https://backend.9labs.io/appcast/audiomate',
          checkpoint: '73b92ba105eb409bdb74c55639bb038cafffada73a144a9b89887588e721ad05'
  name 'AudioMate'
  homepage 'https://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'

  postflight do
    suppress_move_to_applications
  end
end
