cask 'cog' do
  version '4fdbf35'
  sha256 '3239ba84b1dd65edbfa816695ffaa0af7ad6dbf6fdc3d77d9807ec2454095cbf'

  # The abandoned cog code has been forked and is not maintained again
  url "https://www.kode54.net/cog/mercury_builds/Cog-#{version}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'
  license :gpl

  app 'Cog.app'
end
