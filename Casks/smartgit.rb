cask 'smartgit' do
  version '17.1.3'
  sha256 '01b409a3e3ab6b43c2876084294f9919e03ee6bf394406b019e6052083aaef9f'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: '2d0842a34f992b8edf8bf61caef1d155b7898e9b2feb2b2ddb95a34c16e8c810'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
