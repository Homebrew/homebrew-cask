cask "brewtarget" do
  version "4.0.9"
  sha256 "c9c1d322a5a02127d20d86dc14fefece65b067520476a8dd112defe49a1d5eec"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "brewtarget_#{version}.app"

  zap trash: [
    "~/Library/Preferences/brewtarget",
    "~/Library/Preferences/com.brewtarget.Brewtarget.plist",
    "~/Library/Saved Application State/com.brewtarget.Brewtarget.savedState",
  ]
end
