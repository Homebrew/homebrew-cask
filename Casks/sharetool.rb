cask :v1 => 'sharetool' do
  version '2.4.2'
  sha256 '2990ecc1dd5f359fa25bd6c787f0efdd6b509919d00ef78c0d76fa83eef5c18e'

  url "https://files.bainsware.com/sharetool_#{version.gsub('.','')}.dmg"
  name 'ShareTool'
  homepage 'https://www.bainsware.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => "ShareTool #{version.to_i}.dmg"
  app 'ShareTool.app'
end
