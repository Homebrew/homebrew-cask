cask "biscuit" do
  version "1.2.25"

  if Hardware::CPU.intel?
    sha256 "0f3f705f7a29f3dbbb8206a1e0b9234a95b5f8cc924ce34e8c51af3dd5bb9aa6"

    url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg",
        verified: "github.com/agata/dl.biscuit/"
  else
    sha256 "24be52aa4643c3ee348525f2f3e0ec9a849cb71599027fdeb1b0c4686a644d53"

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
