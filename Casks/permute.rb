cask "permute" do
  version "3.5.13,2330"
  sha256 "2b2b85fec6ba55e3410b8fa30b8f66faf5624cceb2918f72ae15b2e2fc9a19cf"

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute.php"

  livecheck do
    url "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Permute #{version.major}.app"
end
