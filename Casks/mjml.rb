cask 'mjml' do
  version '2.2.0'
  sha256 'ab847bc3205a5251cd972f86b6d4e11923417eb65acbc807cd3d346b8c982c2b'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: '9a7ccd724d1f3488c4edaac58d20dda75b143da637eab5031b70a7405e7cbfe9'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
