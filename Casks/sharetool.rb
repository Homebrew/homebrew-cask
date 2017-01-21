cask 'sharetool' do
  version '2.4.2'
  sha256 '2990ecc1dd5f359fa25bd6c787f0efdd6b509919d00ef78c0d76fa83eef5c18e'

  url "https://files.bainsware.com/sharetool_#{version.no_dots}.dmg"
  appcast 'https://www.bainsware.com/',
          checkpoint: '53cec970caa95c1c056dd1673c981c3f644c47017eabc4d081c4975813601b9b'
  name 'ShareTool'
  homepage 'https://www.bainsware.com/'

  app 'ShareTool.app'
end
