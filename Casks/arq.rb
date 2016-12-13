cask 'arq' do
  version '5.6'
  sha256 '932503e3809f4b2259d11360dc23abf150c56e937f1bfb03ae65e66104999084'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '6be156e49b2e550bb82d1e56372ad34e0cd105c1f82fe9379419ac68a1381c95'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
