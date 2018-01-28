cask 'nteract' do
  version '0.5.5'
  sha256 '77dd089458d7796795e22ced4f2cd6c913a072d84ebf64be975961a344e974d3'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: 'ccc4dba4023672d1dc3bd11daad32d7e37f6228e125831ef1d78b898f8c14822'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
