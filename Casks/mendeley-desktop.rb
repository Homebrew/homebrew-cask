cask :v1 => 'mendeley-desktop' do
  version '1.15.1'
  sha256 '5d579da0c478b4a02949abcb1a0028f64d10c4810040f5c5d342325fd665caba'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
