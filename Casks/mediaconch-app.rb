cask 'mediaconch-app' do
  version '17.12'
  sha256 'fcda13041373183c25f0fb12d7828a2692aa0831a6c263b03ab1e042f4a0f8bb'

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/MediaConch_SourceCode/releases.atom',
          checkpoint: '66049985e9654d46039f7ca43c3e0599d572dea6a925f65dedfad23b69ce7ac0'
  name 'MediaConch'
  homepage 'https://mediaarea.net/MediaConch/'

  app 'MediaConch.app'
end
