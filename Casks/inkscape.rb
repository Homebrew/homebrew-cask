cask 'inkscape' do
  version '1.0beta1'
  sha256 '68831989b3919e3137d5acfb130a844933706748addc8b4cd7f957348c1c60a3'

  url "https://inkscape.org/gallery/item/14919/Inkscape-#{version}_OEMhoXK.dmg"
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  app 'Inkscape.app'

  zap trash: '~/Library/Application Support/Inkscape'
end
