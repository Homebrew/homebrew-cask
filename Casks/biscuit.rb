cask "biscuit" do
  version "1.2.22"

  if Hardware::CPU.intel?
    sha256 "280f0c5ccd49e16e4d1c68a0fb6c11ddbf82b071e48396de08738fe9b5f945f8"

    url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg",
        verified: "github.com/agata/dl.biscuit/"
  else
    sha256 "3da056515f0d101417b305bbacaca8035ea852ee04789b0d4540243b507b9651"

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
