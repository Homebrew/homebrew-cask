cask "deezer" do
  version "6.0.30"
  sha256 "27c24b53e47be22d6341d134794db654a358676f321c0f4736315ae5662ecb5f"

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name "Deezer"
  desc "Music player"
  homepage "https://www.deezer.com/download"

  livecheck do
    url "https://www.deezer.com/desktop/download?platform=darwin&architecture=x64"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Deezer.app"

  zap trash: [
    "~/Library/Application Support/Caches/deezer-desktop-updater",
    "~/Library/Application Support/deezer-desktop",
    "~/Library/Caches/com.deezer.deezer*",
    "~/Library/Logs/Deezer",
    "~/Library/Logs/deezer-desktop",
    "~/Library/Preferences/ByHost/com.deezer.*",
    "~/Library/Preferences/com.deezer.deezer-desktop.plist",
    "~/Library/Saved Application State/com.deezer.deezer-desktop.savedState",
  ]
end
