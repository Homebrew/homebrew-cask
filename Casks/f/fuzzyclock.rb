cask "fuzzyclock" do
  version "2.3.0"
  sha256 :no_check

  url "https://mschmidt.me/macOS/FuzzyClock.zip"
  name "FuzzyClock"
  desc "Displays the time in your menubar"
  homepage "https://mschmidt.me/macos.html"

  disable! date: "2024-06-20", because: :no_longer_available

  app "FuzzyClock.app"

  zap trash: [
    "~/Library/Application Scripts/me.mschmidt.FuzzyClock",
    "~/Library/Containers/me.mschmidt.FuzzyClock",
  ]
end
