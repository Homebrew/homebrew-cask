cask 'rapidminer-studio' do
  version '7.2.3'
  sha256 'b04cc77028bac7822d5aeead687a4cf1cca146cebc220cb4d55803aa86489d61'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/rapidminer.releases/rapidminer-studio/7.2.3/rapidminer-studio-osx-7.2.3.dmg'
  name 'RapidMiner Studio'
  homepage 'https://rapidminer.com/products/studio/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RapidMiner\ Studio.app'
end
