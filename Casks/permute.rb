cask 'permute' do
  version '3.1.6,2109'
  sha256 '7aa61327c0b45c55c383af79a801e97457bac97b923c6da8c676623cdf7bdd7b'

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name 'Permute'
  homepage 'https://software.charliemonroe.net/permute.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Permute #{version.major}.app"
end
