cask "motrix" do
  version "1.6.11"

  if Hardware::CPU.intel?
    sha256 "70fa245e44b8e0ec62f50ba5731bc0a876535a51dc0ea318010736d2a6be6dd9"

    url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}.dmg",
        verified: "github.com/agalwood/Motrix/"
  else
    sha256 "1705d6ef4781c17ebf19007dbb2ac52f6227592c783e91ad5b81a1432cf6b668"

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
