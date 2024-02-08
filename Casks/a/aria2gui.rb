cask "aria2gui" do
  version "1.4.1"
  sha256 "1d7817fce91f1002c6d54ff62e4f35903c62d0e9fe7559d7f840c8da72c1b91f"

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  name "Aria2GUI"
  desc "Graphical user interface for Aria2"
  homepage "https://github.com/yangshun1029/aria2gui"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Aria2GUI.app"

  zap trash: [
    "~/Library/Caches/com.Aria2GUI",
    "~/Library/Preferences/com.Aria2GUI.plist",
    "~/Library/Saved Application State/com.Aria2GUI.savedState",
  ]
end
