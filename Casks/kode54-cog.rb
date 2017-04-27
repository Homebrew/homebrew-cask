cask 'kode54-cog' do
  version '0.08,0217d5de'
  sha256 'b1272c067f23a6d9f5481ca79d91aa3869d67066fc24b47ec88b0b22f7d87eef'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
