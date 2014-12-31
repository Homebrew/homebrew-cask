cask :v1 => 'sidestep' do
  version '1.4.1'
  sha256 'c25f7748d73b6f915aff268070ef85ca69f2902de98b044b77c49d1e1341d84e'

  url "https://github.com/chetan51/sidestep/releases/download/#{version}/Sidestep.zip"
  appcast 'http://chetansurpur.com/projects/sidestep/appcast.xml',
          :sha256 => '1d043f565c44c03f6ab5e7c90f025aba3cf480f1623a8a530f87206fab12f86a'
  homepage 'http://chetansurpur.com/projects/sidestep'
  license :oss

  app 'Sidestep.app'
end
