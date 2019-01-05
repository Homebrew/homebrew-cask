cask 'kode54-cog' do
  version '0.08,4f828c91b'
  sha256 'af1ad34a11729506081dd27b513201f903032fe5e3604ff8d5c910601e915c06'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
