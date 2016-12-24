cask 'mjml' do
  version '1.6.0'
  sha256 '500dff72eb35fe7cad7fb88dc4ee6a4a7c61b300160a99db75acad7989634347'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: 'e5c3c9d88b082d3a06270b18837726633a36eddd2d58aee84f76e6437eb3c41a'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
