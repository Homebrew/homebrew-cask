cask :v1 => 'sharetool' do
  version '2.4.2'
  sha256 '2990ecc1dd5f359fa25bd6c787f0efdd6b509919d00ef78c0d76fa83eef5c18e'

  url "http://files.bainsware.com/sharetool_#{version.gsub('.','')}.dmg"
  homepage 'http://bainsware.com/'
  license :unknown

  container :nested => "ShareTool #{version.to_i}.dmg"
  app 'ShareTool.app'
end
