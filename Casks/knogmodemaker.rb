cask 'knogmodemaker' do
  version '1.9.33'
  sha256 '159f2d8f7867021ab76dea7340cfba3d9d7fe8167e5e1c1d5f269fee44868ee2'

  # s3-ap-southeast-2.amazonaws.com/modemaker was verified as official when first introduced to the cask
  url 'https://s3-ap-southeast-2.amazonaws.com/modemaker/KnogModeMaker-1.9.33.dmg'
  name 'Knog Modemaker'
  homepage 'https://www.knog.com.au/modemaker'

  app 'KnogModeMaker.app'
end
