cask 'seafile-client' do
  version '6.0.0'
  sha256 '55825a1f717fc94918e57e303c3fe1019d9a1921100443752d17349542111b21'

  # bintray.com/artifact/download/seafile-org was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/seafile-org/seafile/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://seafile.com/'

  app 'Seafile Client.app'
end
