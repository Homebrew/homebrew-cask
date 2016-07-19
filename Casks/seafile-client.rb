cask 'seafile-client' do
  version '5.1.3'
  sha256 '520162d9e2e2eae2f31f6e575772c48094a9198964ba8a7da22cd77c331bf7a8'

  # bintray.com/artifact/download/seafile-org was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
