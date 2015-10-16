cask :v1 => 'mendeley-desktop' do
  version '1.15'
  sha256 '57d8338649d6efcc7817be31ce69e2633810a3352c78cf95eb5cdf84dee64dae'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
