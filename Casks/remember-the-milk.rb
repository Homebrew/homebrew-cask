cask "remember-the-milk" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.3.11"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-#{arch}.zip"
  if Hardware::CPU.intel?
    sha256 "6bab4f70f87a95764e646788bef3449877a3938768b5a9b92ade946b348c95d2"
  else
    sha256 "5585a2ff3d09867c870c8255dc91e3235012f2f0dbeac3e38beeab6f0cee0f2b"
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
