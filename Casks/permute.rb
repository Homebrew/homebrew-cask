cask "permute" do
  version "3.5.10,2319"
  sha256 "f6c78568bdabf6956829507beecc175cc35b78e1ca1ab0d818dff815eabca771"

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute.php"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Permute #{version.major}.app"
end
