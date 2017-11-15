cask 'arq' do
  version '5.9.6'
  sha256 '300c7b838a90e4db35a73478121647e269d8ec3f8adf82f5508f7ac39d6eac9c'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '9eae1bfb48f1f41a689c66876faed5a1913c34b6f6cd7d988dffd5bc417b1662'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
