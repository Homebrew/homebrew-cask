cask 'arq' do
  version '5.9.4'
  sha256 'a9d47ba7ea72e36d8de69b8734af839a23a0c20d94d0ea9d68944715a2147128'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '28abc03fca70e072d26da055ab44490c6839efcf06921db2ea43c155b024af1a'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
