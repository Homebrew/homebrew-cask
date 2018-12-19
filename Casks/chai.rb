cask 'chai' do
  version '3.1.0'
  sha256 '46c4bb62c753e480522aa213bb1e48136123a283aeda786e74c396be8d30c2ad'

  url "https://github.com/lvillani/chai/releases/download/v#{version}/Chai-v#{version}.zip"
  appcast 'https://github.com/lvillani/chai/releases.atom'
  name 'Chai'
  homepage 'https://github.com/lvillani/chai'

  app 'Chai.app'
end
