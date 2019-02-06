cask 'permute' do
  version '3.0.9,2075'
  sha256 '37d069a67ff02c07a4aea8055498b467bd7f63b4a54af24982efde47ec4be269'

  url "https://trial.charliemonroe.net/permute/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
