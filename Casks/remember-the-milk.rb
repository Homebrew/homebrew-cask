cask "remember-the-milk" do
  version "1.3.2"

  if Hardware::CPU.intel?
    sha256 "7a01800d66313f54bf320c9e84ed03d242bb57254b638932d823954775f44a8f"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-x64.zip"
  else
    sha256 "4f016f1a120666595b4280d48851e04735e58c1c8981e62a8ddd010920587ecb"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-arm64.zip"
  end

  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  desc "To-do app"
  homepage "https://www.rememberthemilk.com/"

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
