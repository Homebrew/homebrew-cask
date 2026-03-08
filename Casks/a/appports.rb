cask "appports" do
  version "1.5.1"
  sha256 "94400dc77d0bc558cdd4088a85cd72fb5548afc6f74b0752c872ea4e4b220384"

  url "https://github.com/wzh4869/AppPorts/releases/download/#{version}/AppPorts#{version}.dmg"
  name "AppPorts"
  desc "Application migration and linking tool"
  homepage "https://github.com/wzh4869/AppPorts"

  livecheck do
    url :url
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "AppPorts.app"

  zap trash: [
    "~/Library/Application Support/AppPorts",
    "~/Library/Caches/com.shimoko.AppPorts",
    "~/Library/Preferences/com.shimoko.AppPorts.plist",
    "~/Library/Saved Application State/com.shimoko.AppPorts.savedState",
  ]
end
