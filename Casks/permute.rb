cask "permute" do
  version "3.5.3,2295"
  sha256 "570335028e3e6e955d695dbbeece5d942df8cb72b264eae63e64f651286b0bef"

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name "Permute"
  homepage "https://software.charliemonroe.net/permute.php"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Permute #{version.major}.app"
end
