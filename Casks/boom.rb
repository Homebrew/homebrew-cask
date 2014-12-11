cask :v1 => 'boom' do
  version '1.0'
  sha256 '446605e22d6c4c56e7451373a330c3c86e2a7aa9316ca9aaa2261d200f7e747d'

  url "http://www.globaldelight.com/boom/download/2x/v#{version}/boom2.dmg"
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  app 'Boom 2.app'

  postflight do
    # Delete the background image so that it will launch
    system '/bin/rm', '--', "#{staged_path}/.DMG_Background_new.png"
  end

  depends_on :macos => '>= :yosemite'
end
