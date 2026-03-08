cask "tomatobar" do
  version "3.6.1"
  sha256 "880d1f4b4474935fca5723ffbda0995376716d8bc94e499ff5a54cbc7b9be702"

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
