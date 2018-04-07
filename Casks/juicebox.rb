cask 'juicebox' do
  version '1.8.8'
  sha256 'f3e825c062184dc11ef8f5a7ca3df3667b943663734d84e4cec86e93427dd1db'

  # s3.amazonaws.com/hicfiles.tc4ga.com/public/juicebox was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/hicfiles.tc4ga.com/public/juicebox/Juicebox_#{version}.dmg"
  name 'Juicebox'
  homepage 'http://aidenlab.org/juicebox/'

  app 'Juicebox.app'

  caveats do
    depends_on_java('8+')
  end
end
