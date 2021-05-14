cask "remember-the-milk" do
  version "1.3.8"

  if Hardware::CPU.intel?
    sha256 "c85c235982229eb48b1fa61f0a0e57e14cf5637c0ae1a2a2e4b735fe4b829593"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-x64.zip"
  else
    sha256 "30f6e82ff782914d49ac1b8242c6d7a933379fbad9b73b269e7e073826b68df8"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-arm64.zip"
  end

  name "Remember The Milk"
  desc "To-do app"
  homepage "https://www.rememberthemilk.com/"

  livecheck do
    url "https://www.rememberthemilk.com/services/mac/"
    strategy :page_match
    regex(%r{<b>Version:</b>\s(\d+(?:\.\d+)*)}i)
  end

  app "Remember The Milk.app"

  zap trash: [
    "~/Library/Application Support/Remember The Milk",
    "~/Library/Caches/com.rememberthemilk.Deskmilk",
    "~/Library/Caches/com.rememberthemilk.Deskmilk.ShipIt",
    "~/Library/HTTPStorages/com.rememberthemilk.Deskmilk.binarycookies",
    "~/Library/Preferences/com.rememberthemilk.Deskmilk.plist",
    "~/Library/Saved Application State/com.rememberthemilk.Deskmilk.savedState",
  ]
end
