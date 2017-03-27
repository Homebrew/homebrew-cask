cask 'fuze' do
  version :latest
  sha256 :no_check

  # citadel.thinkingphones.com was verified as official when first introduced to the cask
  url 'https://citadel.thinkingphones.com/api/v1/applications/fuzeapp/mac/versions/latest/download/installer'
  name 'Fuze'
  homepage 'https://www.fuze.com/'

  app 'Fuze.app'
end
