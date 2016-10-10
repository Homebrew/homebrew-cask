cask 'buildasaur' do
  version '1.0.3'
  sha256 'fb3dbb5eb1752c28f893b50b085a64671e678bd088be2df385605ea62d38e947'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: '2c18e38bcbab005714246766e634b0bcf25671958bc80ac09e0c877a516a33fc'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'

  app 'Buildasaur.app'
end
