cask 'kode54-cog' do
  version '0.08,4d18505da'
  sha256 '016c95aab16108158991f82d034f3d13fc517b53e824adeb9aa68913711949d8'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
