cask "gg-cli" do
  version "0.39.0"
  sha256 "92d476e44e27efc0eb0e097f4183967f4c6d8eb2af894ce7bb88c702a5aa2bf8"

  url "https://github.com/gulbanana/gg/releases/download/v#{version}/gg_#{version}_universal.dmg"
  name "GG"
  desc "Gui for JJ"
  homepage "https://github.com/gulbanana/gg"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "gg.app"
  binary "#{appdir}/gg.app/Contents/MacOS/gg", target: "gg"

  zap trash: [
    "~/Library/Application Support/au.gulbanana.gg",
    "~/Library/Caches/au.gulbanana.gg",
  ]
end
