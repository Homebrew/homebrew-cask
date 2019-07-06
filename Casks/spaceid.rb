cask 'spaceid' do
  version '1.3'
  sha256 '3df4440e9ef96c8408342297a7a287be931976c655a3ec772a96c8082f3a7a81'

  url "https://github.com/dshnkao/SpaceId/releases/download/v#{version}/SpaceId.app.zip"
  appcast 'https://github.com/dshnkao/SpaceId/releases.atom'
  name 'SpaceId'
  homepage 'https://github.com/dshnkao/SpaceId/'

  app 'SpaceId.app'

  preflight do
    set_permissions "#{staged_path}/SpaceId.app", '0755'
  end

  uninstall login_item: 'SpaceId'

  zap trash: '~/Library/Preferences/com.dshnkao.SpaceId.plist'
end
