cask 'kode54-cog' do
  version '0.08,0f93b0c7b'
  sha256 'e97b8b4bf60d1706acd683cce5211471916f6fff257b668bb348cd9a4f41ed38'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
