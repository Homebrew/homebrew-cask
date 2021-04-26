cask "remember-the-milk" do
  version "1.3.5"

  if Hardware::CPU.intel?
    sha256 "a2cce88eb08daf6c9b382c10412a862bfd6f9a16afe757e595e5888c2e38f7f2"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-x64.zip"
  else
    sha256 "9712d1cd75e79f00d609afd0864b370639b395e8c69b28e900cff04b94b9c1b7"

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
