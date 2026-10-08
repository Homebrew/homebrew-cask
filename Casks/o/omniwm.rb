cask "omniwm" do
  version "0.7.6"
  sha256 "ec8c6146a6f21a79e1c40ac70d61121762b93cf53cd308e63eb44e8ace20fcdc"

  url "https://github.com/OmniNull/OmniWM/releases/download/v#{version}/OmniWM-v#{version}.zip"
  name "OmniWM"
  desc "Tiling window manager"
  homepage "https://omniwm.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
