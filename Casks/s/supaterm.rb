cask "supaterm" do
  arch arm: "arm64", intel: "x64"

  version "26.10.2"
  sha256 arm:   "916a8717f4e1c8b0eb613b6eab5d2996dc916d2a31a6e487b5e9fbf2bbe8aa42",
         intel: "1bc435efb2a9ab88e8ae552e6aebdb11cf0e15a0b16794e0d5c6de8cc3a92137"

  url "https://github.com/supabitapp/supaterm/releases/download/v#{version}/supaterm-#{version}-#{arch}.dmg"
  name "Supaterm"
  desc "Minimal GUI for coding agents"
  homepage "https://supaterm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Supaterm.app"

  zap trash: [
    "~/.supaterm",
    "~/Library/Application Support/supaterm-v2",
    "~/Library/Caches/com.supaterm.desktop",
    "~/Library/Caches/com.supaterm.desktop.ShipIt",
    "~/Library/Caches/supaterm-updater",
    "~/Library/HTTPStorages/com.supaterm.desktop",
    "~/Library/Preferences/com.supaterm.desktop.plist",
  ]
end
