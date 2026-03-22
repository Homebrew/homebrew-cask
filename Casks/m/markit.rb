# cask-create: JianliZh429/markit
# frozen_string_literal: true

cask "markit" do
  version "0.3.0"

  on_arm do
    sha256 "1cc4e52f79d5e5ce8f06c27d9278f17146e0d699a2b63000f3205f5fec714d60"

    url "https://github.com/JianliZh429/markit/releases/download/v#{version}/Markit-Apple-Silicon.dmg"
  end
  on_intel do
    sha256 "60597752f45365b6504f2b433780a180742b405fa63194e009044d707e0d078e"

    url "https://github.com/JianliZh429/markit/releases/download/v#{version}/Markit.dmg"
  end

  name "Markit"
  desc "Modern cross-platform Markdown editor"
  homepage "https://github.com/JianliZh429/markit"

  livecheck do
    url :stable
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Markit.app"

  zap trash: [
    "~/Library/Application Support/Markit",
    "~/Library/Caches/com.electron.markit",
    "~/Library/Caches/com.electron.markit.ShipIt",
    "~/Library/Caches/markit",
    "~/Library/Logs/Markit",
    "~/Library/Preferences/com.electron.markit.helper.plist",
    "~/Library/Preferences/com.electron.markit.plist",
    "~/Library/Saved Application State/com.electron.markit.savedState",
  ]
end
