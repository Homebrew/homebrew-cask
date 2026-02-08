cask "tomatobar" do
  version "3.6.0"
  sha256 "097d6b69e33afcd34cddd5edef93ce846775f6c742b7eec8e7885658d4e4a95c"

  url "https://github.com/ivoronin/TomatoBar/releases/download/v#{version}/TomatoBar-v#{version}.zip"
  name "TomatoBar"
  desc "Menu bar pomodoro timer"
  homepage "https://github.com/ivoronin/TomatoBar"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "TomatoBar.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.ivoronin.TomatoBar",
    "~/Library/Containers/com.github.ivoronin.TomatoBar",
  ]
end
