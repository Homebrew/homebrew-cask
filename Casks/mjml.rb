cask 'mjml' do
  version '1.4.0'
  sha256 '6b657de8f0fb29db2370d555e6cc384bff8eba7cab8422b18a1ce81df2b285b2'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: '270ae0f250b2ea3bd95b182dd01ae8a8eada3775d7c0c2ea132af50827385661'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
