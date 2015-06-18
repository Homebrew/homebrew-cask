cask :v1 => 'context-free' do
  version '3.0.8'
  sha256 'fc7e66a7477838b462342b1195ae306bc1b5a74b5c7526a0b1cdf4a2f3b3cd39'

  url "http://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  name 'Context Free'
  homepage 'http://www.contextfreeart.org/'
  license :gpl

  app 'Context Free.app'
end
