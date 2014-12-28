cask :v1 => 'boom' do
  version '1.0.1'
  sha256 '9ee325c8901bfeaae54ca10be5eac129f42c956a0daef772a5e9b0192fd4ab2c'

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
