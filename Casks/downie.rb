cask 'downie' do
  version '3.2,1771'
  sha256 '1660ccda86e44b2745f6a9ac34d2434fe71c9f886976047a8cef5c17b92bece6'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '870c78f98fa92c28fb3dc109e67db87d9f2ec5fc32eb3c4e005b4396058b198e'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
