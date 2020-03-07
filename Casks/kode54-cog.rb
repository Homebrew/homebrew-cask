cask 'kode54-cog' do
  version '1113,17bb70e72'
  sha256 'a6d5442251f8aeed98eff0af62d6f99d78a53b617265470d9d72a35975b3da84'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
