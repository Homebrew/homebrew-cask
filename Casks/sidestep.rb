cask 'sidestep' do
  version '1.4.1'
  sha256 'c25f7748d73b6f915aff268070ef85ca69f2902de98b044b77c49d1e1341d84e'

  # github.com/chetan51/sidestep was verified as official when first introduced to the cask
  url "https://github.com/chetan51/sidestep/releases/download/#{version}/Sidestep.zip"
  appcast 'https://github.com/chetan51/sidestep/releases.atom',
          checkpoint: 'fe529f01ce391e1ec8d93a811d47c6c0f50008006fa9741f895e356d578d4fe3'
  name 'Sidestep'
  homepage 'http://chetansurpur.com/projects/sidestep/'

  app 'Sidestep.app'
end
