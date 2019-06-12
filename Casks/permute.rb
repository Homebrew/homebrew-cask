cask 'permute' do
  version '3.2.6,2143'
  sha256 '1e75bd2f18eb55705d3e6064a5de5ff5ccfb8e68124e455e82f9f51e75f8290d'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
