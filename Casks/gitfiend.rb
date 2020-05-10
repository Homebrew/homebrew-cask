cask 'gitfiend' do
  version '0.23.1'
  sha256 '2b231a127c92857fa46d3832cf3bdde4486e75fad48e248cf1696474b1357394'

  url "https://gitfiend.com/resources/GitFiend-#{version}.dmg"
  appcast 'https://gitfiend.com/app-info'
  name 'GitFiend'
  homepage 'https://gitfiend.com/'

  auto_updates true

  app 'GitFiend.app'

  zap trash: [
               '~/Library/Application Support/GitFiend',
               '~/Library/Preferences/com.tobysuggate.gitfiend.plist',
               '~/Library/Saved Application State/com.tobysuggate.gitfiend.savedState',
             ]
end
