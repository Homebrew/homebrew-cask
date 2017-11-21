cask 'downie' do
  version '3.0.9,1706'
  sha256 '9568dc97b1fcfea0b70620ae43d67bcd7ab249da06913f06c0899c5da2596618'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '321af3b463106fa8c96555e618802d27d9316517f1f0d29f4c14475cd2715d18'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
