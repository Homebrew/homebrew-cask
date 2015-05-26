cask :v1 => 'sidestep' do
  version '1.4.1'
  sha256 'c25f7748d73b6f915aff268070ef85ca69f2902de98b044b77c49d1e1341d84e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/chetan51/sidestep/releases/download/#{version}/Sidestep.zip"
  appcast 'https://github.com/chetan51/sidestep/releases.atom'
  name 'Sidestep'
  homepage 'http://chetansurpur.com/projects/sidestep/'
  license :mit

  app 'Sidestep.app'
end
