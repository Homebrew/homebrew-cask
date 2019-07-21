cask 'mjml' do
  version '2.11.0'
  sha256 'df16f34efa6f145f859e74333d6d37235e04a42e1b7d6cb096807d24551588d9'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/v#{version}/mjml-app-#{version}-mac.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
