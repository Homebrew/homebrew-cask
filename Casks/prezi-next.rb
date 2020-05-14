cask 'prezi-next' do
  version '1.43.0'
  sha256 '7009ff77350e4f76805ada0ceb94ed374749f70f67c1afbc90bc04a2ecb5d0e8'

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast 'https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml'
  name 'Prezi Next'
  homepage 'https://prezi.com/'

  app 'Prezi Next.app'
end
