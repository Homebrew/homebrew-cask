cask 'kode54-cog' do
  version '0.08,6847f1bcb'
  sha256 'aa804f8e4435fb8182cfb542402ad5cd2398b0d7fde17b48b6d75098edf2a37d'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
