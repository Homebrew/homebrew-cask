cask "fuzzyclock" do
  version "2.3.0"
  sha256 :no_check

  url "https://mschmidt.me/macOS/FuzzyClock.zip"
  name "FuzzyClock"
  desc "Fuzzy clock in menu bar"
  homepage "https://mschmidt.me/macos.html"

  livecheck do
    url :homepage
    regex(/version\s+(\d+(?:\.\d+)+)/i)
  end

  app "FuzzyClock.app"

  zap trash: [
    "~/Library/Application Scripts/me.mschmidt.FuzzyClock",
    "~/Library/Containers/me.mschmidt.FuzzyClock",
  ]
end
