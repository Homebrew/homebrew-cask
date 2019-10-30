cask 'kode54-cog' do
  version '0.08,24c130ae0'
  sha256 '75ae207c7a0ebe970bb3bc848680cc6261f86dc8e6c84a18c3abc26b1a17c5fa'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
