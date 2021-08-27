cask "biscuit" do
  version "1.2.23"

  if Hardware::CPU.intel?
    sha256 "995127c3311e93c1857c3d00495b76817875fa1fa3a67d0a966ff98e8edeca02"

    url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg",
        verified: "github.com/agata/dl.biscuit/"
  else
    sha256 "eb02115d131101d25c3a95ad332ab8cecca3f5327c08c2200d6f95d9259a1c73"

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
