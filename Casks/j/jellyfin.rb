cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "10.11.6"
  sha256 arm:   "548038ac08070fc653e432c1a5c1d99e37c17087962f5b3df1ef4d699560adb6",
         intel: "c27546ac2d50da2dec7fc8cd6e119ad90925413e7b3ef7e3281e823768914748"

  url "https://repo.jellyfin.org/files/server/macos/stable/v#{version}/#{arch}/jellyfin_#{version}-#{arch}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/?path=/server/macos/latest-stable/#{arch}"
    regex(/href=.*?jellyfin[._-]v?(\d+(?:[.-]\d+)+)-#{arch}\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "Jellyfin.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/jellyfin*.diag",
    "~/.cache/jellyfin/",
    "~/.config/jellyfin/",
    "~/.local/share/jellyfin/",
    "~/Library/Application Support/jellyfin",
    "~/Library/Preferences/Jellyfin.Server.plist",
  ]
end
