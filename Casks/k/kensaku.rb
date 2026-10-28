cask "kensaku" do
  version "1.0.7"
  sha256 "f99d54f3b2d8a994d08d8d1f5a6921da1fcadd786d12c726ca78d5ac18032743"

  url "https://github.com/yjid/kensaku/releases/download/v#{version}/kensaku_#{version}_universal.dmg"
  name "Kensaku"
  desc "Local file search that reads inside your files, including screenshots"
  homepage "https://github.com/yjid/kensaku"

  app "Kensaku.app"

  zap trash: [
    "~/Library/Application Support/com.gochi.kensaku",
    "~/Library/Caches/com.gochi.kensaku",
    "~/Library/Logs/com.gochi.kensaku",
  ]
end