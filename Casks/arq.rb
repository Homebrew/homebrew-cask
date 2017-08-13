cask 'arq' do
  version '5.9.1'
  sha256 '03b65bf90bfa6374e9969f6144e8d3d1ca8c1bbde495fb499566ed566d734025'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '5793fd0f019458cb2050a2879293e1140ff8e31bbda0e0f6b8361e5be4ab7680'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
