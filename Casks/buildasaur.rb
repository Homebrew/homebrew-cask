cask 'buildasaur' do
  version '1.0.3'
  sha256 'fb3dbb5eb1752c28f893b50b085a64671e678bd088be2df385605ea62d38e947'

  url "https://github.com/buildasaurs/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/buildasaurs/Buildasaur/releases.atom',
          checkpoint: '345e1dc3cfa636cce48bda3a2fc2f74d30164095151ed5a012dc05aa9f6f3285'
  name 'Buildasaur'
  homepage 'https://github.com/buildasaurs/Buildasaur'

  app 'Buildasaur.app'
end
