cask :v1 => 'buildasaur' do
  version '0.6.4'
  sha256 'e851d5bc9ce7fe13ad65f559617d9130040e444aeaf35191013069e96eae8fc6'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
