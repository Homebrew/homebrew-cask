cask 'gingr' do
  version '1.3'
  sha256 '2a7dd9307ce7dc69d68648c469f6d6fba2e411161332043af9477b08cb2406c6'

  # github.com/marbl/gingr was verified as official when first introduced to the cask
  url "https://github.com/marbl/gingr/releases/download/v#{version}/gingr-OSX64-v#{version}.app.zip"
  appcast 'https://github.com/marbl/gingr/releases.atom',
          checkpoint: 'd9f1acde954eab6d308121d0665af8c4bf8206d5ad5fac2b272f36cb4f15fd6c'
  name 'Gingr'
  homepage 'https://harvest.readthedocs.io/en/latest/content/gingr.html'

  app 'Gingr.app'
end
