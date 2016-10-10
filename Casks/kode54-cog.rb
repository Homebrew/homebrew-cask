cask 'kode54-cog' do
  version '0.08,4fdbf35'
  sha256 '3239ba84b1dd65edbfa816695ffaa0af7ad6dbf6fdc3d77d9807ec2454095cbf'

  url "https://www.kode54.net/cog/mercury_builds/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
