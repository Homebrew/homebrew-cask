cask 'permute' do
  version '3.3.7,2208'
  sha256 '0a4c6d957c60e4cce0ae0d5cb38e9cae0dbf3223dc1e7b06173f460c34409dd3'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
