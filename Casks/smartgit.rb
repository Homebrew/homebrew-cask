cask 'smartgit' do
  version '17.0.4'
  sha256 'd807045ceb2235c88434b3b3ea15f676e0e7032425d2d058ad2c201186099550'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: '8135d156aa1a5948a243b34ccfa36bb271d0f89c1a2e08509c50423b417def03'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
