cask 'kode54-cog' do
  version '0.08,fdab126cc'
  sha256 '648b1db1ba06125924ec4c8ef39dce4473d080d24f7da0f6a005834f03f5c0e8'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
