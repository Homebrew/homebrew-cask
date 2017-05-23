cask 'arq' do
  version '5.8.4'
  sha256 'e93b0dd2e298d69d630eb20589cbdf3c41468ff6a9b4299ea8032a2a13d40bbb'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '1b0dfb0b4007365ce96472727f4e735168e739a67f9524de80092187de411b80'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
