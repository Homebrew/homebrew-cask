cask "biscuit" do
  version "1.2.26"

  if Hardware::CPU.intel?
    sha256 "0982af4d6aa84443c2bfe179541bdd42985f987144b64e86dbc9c2562cce620e"

    url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg",
        verified: "github.com/agata/dl.biscuit/"
  else
    sha256 "3db442d76d0a61e21adfa477cfe4cd92a9f98fc936e370e4b61d6ccb7e6ed4cb"

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
