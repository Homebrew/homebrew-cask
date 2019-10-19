cask 'rrcc' do
  version '0.8.7'
  sha256 '66b181d17acb4477a148d8759d517da078ff9cead3f6a5ff3e0feed439a2dcec'

  url "https://github.com/LazyT/rrcc/releases/download/#{version}/rrcc-#{version.no_dots}.dmg"
  appcast 'https://github.com/LazyT/rrcc/releases.atom'
  name 'RoboRock Control Center'
  homepage 'https://github.com/LazyT/rrcc'

  app 'rrcc.app'

  zap trash: '~/Library/Saved Application State/com.yourcompany.rrcc.savedState'
end
