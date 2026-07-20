cask "magicquit" do
  version "2.0"
  sha256 "eb7a42caa1318d977750d3421bbc13a34bc0694f35aeb3d010ec190dd6e0553f"

  url "https://github.com/BigBerny/magicquit/releases/download/v#{version}/MagicQuit-#{version}.zip"
  name "MagicQuit"
  desc "Automatically quits apps that are idle or whose last window was closed"
  homepage "https://github.com/BigBerny/magicquit"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MagicQuit.app"

  zap trash: [
    "~/Library/Preferences/com.MagicQuit.plist",
  ]
end
