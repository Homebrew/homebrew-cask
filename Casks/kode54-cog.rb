cask 'kode54-cog' do
  version '0.08,2575a2fb'
  sha256 '4ee8fc4faac066aa162424e772fc4be0486ea4af4b65d12432593c7ab42a8599'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
