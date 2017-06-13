cask 'multimarkdown-composer' do
  version '2.9'
  sha256 'c286b1fa6af57c182bbf0942987a5099ac80378a1c6347287515f0c59db0e9ed'

  # files.fletcherpenney.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer-#{version}.zip"
  appcast 'http://multimarkdown.com/download/',
          checkpoint: 'a6abaa7faed9adabc0306f9cff4313a2cf42ed0c51482ef2b9b20b6fa0ff068e'
  name 'MultiMarkdown Composer'
  homepage 'http://multimarkdown.com/download/'

  app 'MultiMarkdown Composer.app'
end
