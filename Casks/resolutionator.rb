cask 'resolutionator' do
  version '1.0.3'
  sha256 'fd94d101e41c135be4563d7500ba851e79deed5f288f2e8659876ac5d6afbd5c'

  url 'https://manytricks.com/download/resolutionator'
  appcast 'https://manytricks.com/resolutionator/appcast.xml',
          checkpoint: 'bac0c680fdbe621215de014bfe7533d9bb87a8550743e2a9a75a004cf6ea362d'
  name 'Resolutionator'
  homepage 'https://manytricks.com/resolutionator/'
  license :gratis

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Resolutionator.app'
end
