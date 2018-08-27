cask 'calendly-click' do
  version '0.1.6'
  sha256 '3542cc0e6c39e46d271694da4b2578a8ef6f7adecfb46613fc8ae89d82ab247d'

  # d26xyjziomggk4.cloudfront.net was verified as official when first introduced to the cask
  url "https://d26xyjziomggk4.cloudfront.net/calendly_desktop/releases/production/darwin_x64/calendly-click-#{version}.dmg"
  name 'Calendly Click'
  homepage 'https://calendly.com/'

  app 'Calendly Click.app'
end
