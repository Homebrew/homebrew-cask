cask 'macdown' do
  version '0.6.4'
  sha256 'fcc7950c69eca4428a2eb4c2705e032a747eacb2b657bc48195c3aee60d35f25'

  # github.com/MacDownApp/macdown was verified as official when first introduced to the cask
  url "https://github.com/MacDownApp/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://github.com/MacDownApp/macdown/releases.atom',
          checkpoint: '494e6ec6883fd528a9b1905aa3270dfd0361143bfae5bec6b50284b22ef1f966'
  name 'MacDown'
  homepage 'https://macdown.uranusjr.com/'

  app 'MacDown.app'
  binary "#{appdir}/MacDown.app/Contents/SharedSupport/bin/macdown"

  zap delete: [
                '~/Library/Caches/com.uranusjr.macdown',
                '~/Library/Preferences/com.uranusjr.macdown.plist',
                '~/Library/Preferences/com.uranusjr.macdown.LSSharedFileList.plist',
                '~/Library/Application Support/MacDown',
              ]
end
