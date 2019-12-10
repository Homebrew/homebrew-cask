cask 'sim-daltonism' do
  version '2.0.4'
  sha256 'c5c930be3f4ba613f780f4877f8555e92d2bc0a30bd0b12913a04226b0eef0d0'

  url "https://littoral.michelf.ca/apps/sim-daltonism/sim-daltonism-#{version}.zip"
  appcast 'https://littoral.michelf.ca/apps/sim-daltonism/'
  name 'Sim Daltonism'
  homepage 'https://michelf.ca/projects/mac/sim-daltonism/'

  app 'Sim Daltonism.app'
end
