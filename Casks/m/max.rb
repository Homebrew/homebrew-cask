cask "max" do
  version "26.2.2"
  sha256 :no_check

  url "https://download.max.ru/mac/release/MAX.dmg"
  name "Max"
  desc "Fast and lightweight messaging app"
  homepage "https://max.ru/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sonoma"

  app "Max.app"

  zap trash: [
    "~/Library/Application Support/ONEME",
    "~/Library/Caches/MAX",
    "~/Library/Preferences/ru.oneme.desktop.plist",
  ]
end
