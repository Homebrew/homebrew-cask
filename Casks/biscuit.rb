cask "biscuit" do
  version "1.2.24"

  if Hardware::CPU.intel?
    sha256 "3bcecb7a99765eb05b827454fe5ba5e07c8573ce96e895c65d8edc9a2af2cd35"

    url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg",
        verified: "github.com/agata/dl.biscuit/"
  else
    sha256 "0b47026f817d5d27a00c5d59a29d430e7aab9235ca1dbbbba922a7d55a95d30a"

    url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}-arm64.dmg",
        verified: "github.com/agata/dl.biscuit/"
  end

  name "Biscuit"
  desc "Browser to organize apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
