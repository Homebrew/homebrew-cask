cask 'sharetool' do
  version '2.4.2'
  sha256 '2990ecc1dd5f359fa25bd6c787f0efdd6b509919d00ef78c0d76fa83eef5c18e'

  url "https://files.bainsware.com/sharetool_#{version.delete('.')}.dmg"
  name 'ShareTool'
  homepage 'https://www.bainsware.com'
  license :gratis

  container nested: "ShareTool #{version.to_i}.dmg"

  app 'ShareTool.app'
end
