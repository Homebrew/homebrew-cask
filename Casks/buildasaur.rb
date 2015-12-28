cask 'buildasaur' do
  version '0.6.4'
  sha256 'e851d5bc9ce7fe13ad65f559617d9130040e444aeaf35191013069e96eae8fc6'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          :sha256 => '1e6f6b9b49f134f49b62a8c88c554621889f2392e648e8fcaa9ae02a30d7aaa7'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
