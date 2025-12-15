cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "451c5ba70f535453dd972cb1366c3fb5fb7ebf3b82633b4f4d2f41a0c4570f26",
         intel: "494dbd6551b69b8c7708086d8e076a613d17777e017f8e7346f80c744c856e25"

  url "https://github.com/cardisoft/cardinal/releases/download/v#{version}/Cardinal_#{version}_#{arch}.dmg"
  name "Cardinal Search"
  desc "Fastest file searching tool"
  homepage "https://github.com/cardisoft/Cardinal"

  depends_on macos: ">= :monterey"

  app "Cardinal.app"

  zap trash: [
    "~/Library/Application Support/com.cardinal.one",
    "~/Library/Caches/com.cardinal.one",
    "~/Library/Preferences/com.cardinal.one.plist",
    "~/Library/Webkit/com.cardinal.one",
  ]
end
