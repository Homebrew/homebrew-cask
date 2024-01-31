cask "tautulli" do
  version "2.13.4"
  sha256 "820842c614461ddab95f0ad3be65fdd1b2ab555074eba5a83fa3689cad2cffe1"

  url "https://github.com/Tautulli/Tautulli/releases/download/v#{version}/Tautulli-macos-v#{version}-x64.pkg",
      verified: "github.com/Tautulli/Tautulli/"
  name "Tautulli"
  desc "Monitoring, analytics and notifications tool for Plex Media Server"
  homepage "https://tautulli.com/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :big_sur"

  pkg "Tautulli-macos-v#{version}-x64.pkg"

  uninstall quit:       "com.Tautulli.Tautulli",
            pkgutil:    "com.Tautulli.Tautulli",
            login_item: "Tautulli"

  zap trash: "~/Library/Application Support/Tautulli"
end
