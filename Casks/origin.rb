cask 'origin' do
  version '10.5.49.31786'
  sha256 '930b8899c8619bf036c31d580d0d4809874c93f17af90c9a7745dba8207e4d68'

  # origin-a.akamaihd.net was verified as official when first introduced to the cask
  url "https://origin-a.akamaihd.net/Origin-Client-Download/origin/mac/live/OriginUpdate_#{version.dots_to_underscores}.zip"
  appcast "https://api1.origin.com/autopatch/2/upgradeFrom/#{version}/en_US/PROD?platform=MAC&osVersion=10.14.0"
  name 'Origin'
  homepage 'https://www.origin.com/'

  app 'Origin.app'

  preflight do
    # There is no enclosing .app folder, just the 'Contents' of the app in the appcast download
    FileUtils.mv(staged_path.children, staged_path.join('Origin.app').tap(&:mkpath))
  end

  zap trash: [
               '~/Library/Application Support/Origin',
               '~/Library/Saved Application State/com.ea.Origin.savedState',
               '~/Library/LaunchAgents/com.ea.origin.WebHelper.plist',
               '~/Library/Caches/com.ea.Origin',
               '~/Library/Caches/Origin',
             ]
end
