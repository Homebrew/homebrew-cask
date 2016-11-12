cask 'kode54-cog' do
  version '0.08,fbe9ae5'
  sha256 '6a36632a4a0c390614f32b18ca1fd01943b130ee5029dc46ea3627b8b91bf1f6'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
