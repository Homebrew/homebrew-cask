cask "permute" do
  version "3.6.8,2438"
  sha256 "bbf662a6f18b0dca5ca14ba455fb97bb6f176af33dbe475e3151b924cdb92a14"

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

  zap trash: [
    "~/Library/Containers/com.charliemonroe.Permute-#{version.major}",
    "~/Library/Preferences/com.charliemonroe.Permute-#{version.major}.plist",
  ]
end
