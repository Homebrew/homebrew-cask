cask 'boom' do
  version :latest
  sha256 :no_check

  url 'http://www.globaldelight.com/boom/download/2x/web/boom2.dmg'
  name 'Boom'
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Boom 2.app'

  postflight do
    # Delete the background image so that it will launch
    system '/bin/rm', '--', "#{staged_path}/.DMG_Background_new.png"
  end
end
