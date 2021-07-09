cask "biscuit" do
  version "1.2.20"

  if Hardware::CPU.intel?
    sha256 "6da36779257e22df4b5eba24b2bb46cf6005d98db156156f3619b44420f9fce2"

    url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg",
        verified: "github.com/agata/dl.biscuit/"
  else
    sha256 "fc81c55f717480430b690838f8a5e6f887b3fc5e1975967c32a9ef4dec5005b1"

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
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Logs/Biscuit",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
