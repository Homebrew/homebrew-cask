cask 'multimarkdown-composer' do
  version '2.9'
  sha256 'c286b1fa6af57c182bbf0942987a5099ac80378a1c6347287515f0c59db0e9ed'

  # files.fletcherpenney.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer-#{version}.zip"
  appcast 'http://multimarkdown.com/download/',
          checkpoint: 'ae299940b699eeee3c47f2e6d32f82ae3057650c50c2c568f50f38577ff3ec5b'
  name 'MultiMarkdown Composer'
  homepage 'http://multimarkdown.com/download/'

  app 'MultiMarkdown Composer.app'
end
