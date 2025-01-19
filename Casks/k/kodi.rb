cask "kodi" do
  arch arm: "arm64", intel: "x86_64"

  version "21.2-Omega"
  sha256 arm:   "fef454cc79107fb7e600d81fd1ad173bb2f2481a3a32c78fe84f927b58446832",
         intel: "3639fdb737e95fc2126b44e25cc4a88db6b857df7795f27ba8ed8d20eaa232f6"

  url "https://mirrors.kodi.tv/releases/osx/#{arch}/kodi-#{version}-#{arch}.dmg"
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  # The regex below assumes that the release name will always be one word
  # (e.g., Leia, Matrix, Nexus, Omega, etc.).
  livecheck do
    url "https://kodi.tv/download/macos/"
    regex(/href=.*?kodi[._-]v?(\d+(?:\.\d+)+[._-][^-]+?)[._-][^-]+?\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Kodi.app"

  zap trash: [
    "~/.kodi",
    "~/Library/Application Support/Kodi",
    "~/Library/Logs/kodi.log",
    "~/Library/Logs/kodi.old.log",
    "~/Library/Preferences/org.xbmc.kodi.plist",
    "~/Library/Saved Application State/org.xbmc.kodi.savedState",
  ]
end
