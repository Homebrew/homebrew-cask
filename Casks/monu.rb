cask 'monu' do
  version '1.2.0'
  sha256 'ee90e1eadb95983e694c3b8d482cd88758c773dc01024f8ba79b8d9b41175045'

  url "https://github.com/maxogden/monu/releases/download/v#{version}/Monu.zip"
  appcast 'https://github.com/maxogden/monu/releases.atom',
          :sha256 => '1a06df1e3d776fece9ec2b76603b92d4dcfb4f7e54f71ef64be34c5ba39d0bde'
  name 'Monu'
  homepage 'https://github.com/maxogden/monu'
  license :mit

  app 'Monu.app'
end
