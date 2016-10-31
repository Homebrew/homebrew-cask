cask 'arq' do
  version '5.2.5'
  sha256 '0ee075f9955f5092c3378fc50b10f0397a27d9eb0e1bc91f0aa3db2ae12b696e'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '155484346612b1131f47fa6de4bb290a138d65bb34cfe0aea526da4609841565'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
