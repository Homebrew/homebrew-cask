cask "omniwm@canary" do
  version "20261024-0439-40061526227-1"
  sha256 "bfc5950d98d9a3bd51726a93b612f8a9dcf54f367f9a5901c715aefdd23c83d5"

  url "https://github.com/OmniNull/OmniWM/releases/download/canary-#{version}/OmniWM-canary-canary-#{version}.zip"
  name "OmniWM Canary"
  desc "Tiling window manager"
  homepage "https://omniwm.app/"

  livecheck do
    url :url
    regex(/^canary[._-](\d+(?:[._-]\d+)+)$/i)
  end

  conflicts_with cask: "omniwm"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "OmniWM.app"
  binary "#{appdir}/OmniWM.app/Contents/MacOS/omniwmctl"

  zap trash: [
    "~/.config/omniwm",
    "~/.local/state/omniwm",
    "~/Library/Caches/com.barut.OmniWM",
    "~/Library/HTTPStorages/com.barut.OmniWM",
    "~/Library/Preferences/com.barut.OmniWM.plist",
  ]
end
