cask 'calendly-click' do
  version '0.1.5'
  sha256 '7ea9a361ceb8e39dd8d54019e6d6ed9d913f3d745987a95602e5bc32945d36b6'

  # d26xyjziomggk4.cloudfront.net was verified as official when first introduced to the cask
  url "https://d26xyjziomggk4.cloudfront.net/calendly_desktop/releases/production/darwin_x64/calendly-click-#{version}.dmg"
  name 'Calendly Click'
  homepage 'https://calendly.com/'

  app 'Calendly Click.app'
end
