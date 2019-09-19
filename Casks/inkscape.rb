cask 'inkscape' do
  version '1.0beta1'
  sha256 '6939e99761009befa23a85b8f0d117c1df83934bb1d5fcb8084b4040e122aa66'

  url "https://inkscape.org/gallery/item/14919/Inkscape-#{version}.dmg"
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  app 'Inkscape.app'

  zap trash: [
               '~/Library/Application Support/Inkscape',
             ],
      rmdir: [
               '~/Library/Application Support/Inkscape',
             ]
end
