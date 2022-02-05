cask "shellhistory" do
  version "1.1.4"
  sha256 "741ff8154419da2da156a0480b2380be4aefa668a6b56343f83420e4439de0b3"

  url "https://loshadki.app/shellhistory/ShellHistory%20#{version}.dmg"
  name "shellhistory"
  desc "Backup, sync and organize shell history"
  homepage "https://loshadki.app/shellhistory/"

  livecheck do
    url :homepage
    regex(/href=.*?ShellHistory%20v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ShellHistory.app"

  zap trash: [
    "~/Library/Application Scripts/4QE86VV38D.app.loshadki.ShellHistory",
    "~/Library/Application Scripts/app.loshadki.ShellHistory",
    "~/Library/Application Scripts/app.loshadki.ShellHistoryBackground",
    "~/Library/Application Scripts/app.loshadki.ShellHistoryCli",
    "~/Library/Containers/app.loshadki.ShellHistory",
    "~/Library/Containers/app.loshadki.ShellHistoryBackground",
    "~/Library/Containers/app.loshadki.ShellHistoryCli",
    "~/Library/Group Containers/4QE86VV38D.app.loshadki.ShellHistory",
  ]
end
