cask 'permute' do
  version '3.4.10,2266'
  sha256 '1b87cab903f53d4afe56dbfe52a826a8c71398098b419950e9c46cc8427b7ddb'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
