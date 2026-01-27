# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "infinidesk" do
  version "2.31"
  sha256 "d3dfaa3e217c10989771148af4e80d546b0c23ed162eed94062679969c36565c"

  url "https://infinidesk.app/static/download/v#{version}/InfiniDesk.dmg"
  name "infinidesk"
  desc "Create multiple desktops on your Mac each with unique files, wallpaper & widgets"
  homepage "https://infinidesk.app"

  livecheck do
    url :homepage
    regex(/Version[^\d]*(\d+(?:\.\d+)+)/i)
    strategy :page_match
  end

  depends_on macos: ">= :big_sur"

  app "InfiniDesk.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/Infinidesk",
    "~/Library/Preferences/app.infinidesk.InfiniDesk.plist",
  ]
end
