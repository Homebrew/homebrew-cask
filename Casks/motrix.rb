cask "motrix" do
  version "1.6.10"

  if Hardware::CPU.intel?
    sha256 "813e202a3d2555134fe841e5b790dcb2c539f6773389890412ec06a118ce629e"

    url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}.dmg",
        verified: "github.com/agalwood/Motrix/"
  else
    sha256 "9cde89252b5a55eb714030038013f5a31dffabe8712bbfccbe4aa5ffc726c684"

    url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}-arm64.dmg",
        verified: "github.com/agalwood/Motrix/"
  end

  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  app "Motrix.app"

  zap trash: [
    "~/Library/Application Support/Motrix",
    "~/Library/Preferences/net.agalwood.Motrix.plist",
    "~/Library/Saved Application State/net.agalwood.Motrix.savedState",
    "~/Library/Logs/Motrix",
    "~/Library/Caches/net.agalwood.Motrix",
  ]
end
