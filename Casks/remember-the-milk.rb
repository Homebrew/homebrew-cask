cask "remember-the-milk" do
  version "1.3.10"

  if Hardware::CPU.intel?
    sha256 "3cc0262ac653c6f71ff1e8f3f17d37da70e9fd464c94cb6aceb64d2dabf09104"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-x64.zip"
  else
    sha256 "9e1e68d5b9bf6cb284f7af75cd55f219d4cb848aaf7a27ea7144b03008c8c908"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-arm64.zip"
  end

  name "Remember The Milk"
  desc "To-do app"
  homepage "https://www.rememberthemilk.com/"

  livecheck do
    url "https://www.rememberthemilk.com/services/mac/"
    regex(%r{<b>Version:</b>\s*(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :yosemite"

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
