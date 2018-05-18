cask 'gingr' do
  version '1.3'
  sha256 '2a7dd9307ce7dc69d68648c469f6d6fba2e411161332043af9477b08cb2406c6'

  # github.com/marbl/gingr was verified as official when first introduced to the cask
  url "https://github.com/marbl/gingr/releases/download/v#{version}/gingr-OSX64-v#{version}.app.zip"
  appcast 'https://github.com/marbl/gingr/releases.atom',
          checkpoint: 'f2526e74819b698040b1d02d8db3571885ef0d1acde9608a7f41702c003ab9ac'
  name 'Gingr'
  homepage 'https://harvest.readthedocs.io/en/latest/content/gingr.html'

  app "gingr-OSX64-v#{version}.app"
end
