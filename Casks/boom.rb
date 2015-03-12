cask :v1 => 'boom' do
  version '1.1.1'
  sha256 '21e789d4ec2a35a74b2fea649926ffa63fac5313040e7393f9e01c727c6d6ed4'

  url "http://www.globaldelight.com/boom/download/2x/web/boom2.dmg"
  name 'Boom'
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  app 'Boom 2.app'

  postflight do
    # Delete the background image so that it will launch
    system '/bin/rm', '--', "#{staged_path}/.DMG_Background_new.png"
  end

  depends_on :macos => '>= :yosemite'
end
