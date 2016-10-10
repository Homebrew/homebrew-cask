cask 'clipy' do
  version '1.1.0'
  sha256 '8a3e55e455457f9d7b763b38a30e69049576789ee39a8e501c3d099d2f377fc4'

  # github.com/Clipy/Clipy was verified as official when first introduced to the cask
  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: 'dab5e440914f665d688d11716ae191474fcb65042a68d65840df2626a80823de'
  name 'Clipy'
  homepage 'https://clipy-app.com/'

  depends_on macos: '>= :mavericks'

  app 'Clipy.app'
end
