cask 'kode54-cog' do
  version '0.08,c291a488'
  sha256 'a17c3fd7b8f79b1d073f9feb7139434ed28055edb27a5fc020320808ff799714'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
