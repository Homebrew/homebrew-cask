cask 'androidtool' do
  version '1.70.0'
  sha256 'd643136a0694e922701305c7bc0c14302ba6652fc20a21defb41300f49a731d4'

  url "https://github.com/muandrew/androidtool-mac/releases/download/release%2F#{version}/AndroidTool-#{version}.zip"
  appcast 'https://github.com/muandrew/androidtool-mac/releases.atom'
  name 'AndroidTool'
  homepage 'https://github.com/muandrew/androidtool-mac'

  app 'AndroidTool.app'
end
