cask "as-timer" do
  version "6.0"
  sha256 :no_check

  url "https://downloads.alinofsoftware.ch/current/macos/astimer.dmg"
  name "AS Timer"
  desc "Timer app"
  homepage "https://www.alinofsoftware.ch/apps/products-timer/index.html"

  livecheck do
    url "https://www.alinofsoftware.ch/downloads/index.html"
    regex(/AS\s+Timer\s+V?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "AS Timer.app"

  zap trash: [
    "~/Library/Application Scripts/com.alinofsoftware.alinoftimer",
    "~/Library/Containers/com.alinofsoftware.alinoftimer",
  ]
end
