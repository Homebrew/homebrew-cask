cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "0388ce94225d0f0aefd02b32ef285a1773e4d6f1499610e17275d52541e1836d",
         intel: "bb64e540940aa06139ff61089e05aed66970493502849383cdac7c48badec914"

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
