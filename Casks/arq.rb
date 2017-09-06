cask 'arq' do
  version '5.9.3'
  sha256 '5d4673c10e1817ae5ee0f4818a68e0f2bd621169ebc80bcdadb7ba44dbce61f1'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '93ce230bb0b38ea40a6ec9e0d245a12f6002b722b92457227e9760c251e3fa62'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
