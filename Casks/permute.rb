cask 'permute' do
  version '3.0.8,2070'
  sha256 'e78cf100cd0f1012052bc887e0cfa04ecc57c0d50b74806d3d48d1e31e4c5022'

  url "https://trial.charliemonroe.net/permute/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
