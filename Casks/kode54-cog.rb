cask 'kode54-cog' do
  version '0.08,38d1dee84'
  sha256 '3b02e6e351990dbeecb49b483595a80533125ed804d8cd8a4778765f2585b274'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
