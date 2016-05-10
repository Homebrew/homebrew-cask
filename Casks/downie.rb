cask 'downie' do
  version '2.3.1225'
  sha256 'a1b78160e316a4df97c2098a84676ccc78ccbd72c0b326137aea3d2591866ab0'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast "http://trial.charliemonroe.net/downie/updates_#{version.major_minor}.xml",
          checkpoint: '3cf70765eb1df94e772f0c96d756bbd79c58aa44fba0bd57c3b486eafe66e61d'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
