cask 'arq' do
  version '5.9'
  sha256 '89a3f9472b07a7bbc0464279f4eb0c05150e458b18c08833919d5bf86602a8a5'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '5113fcba8699c7d137561917efcc1f045294e1aadd9df91d36ae0cbd001923c0'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
