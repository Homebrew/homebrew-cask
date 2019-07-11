cask 'kode54-cog' do
  version '0.08,28b3dd7c'
  sha256 '54cf09a6a4f3eaf3e207b3245b94e49095b6e5679880a5ee04bc26d1017476e8'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
