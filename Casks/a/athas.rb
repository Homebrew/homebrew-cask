cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "48437c2a2ef8f9b33cafdf3215072433a7e10266f4f512730d1001c9c1596c3f",
         intel: "c113d422aea6efd94210406d7e3bc90a3c6d17bcf04f2955cc1496ad72673f6f"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg",
      verified: "github.com/athasdev/athas/"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Athas.app"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
