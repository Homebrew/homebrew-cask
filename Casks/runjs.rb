cask "runjs" do
  version "2.0.1"

  if Hardware::CPU.intel?
    sha256 "71db49c0d1e7308fa1b391b81e3098e5c168a013c9e1a7caf3054f374604f242"

    url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg",
        verified: "github.com/lukehaas/runjs/"
  else
    sha256 "f1868b503318a0fc0f4095bf67fd19f5da41a8abc47049e5a1f98ee9bc81053f"

    url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}-arm64.dmg",
        verified: "github.com/lukehaas/runjs/"
  end

  name "RunJS"
  desc "JavaScript playground that auto-evaluates as code is typed"
  homepage "https://runjs.app/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "RunJS.app"

  zap trash: [
    "~/Library/Application Support/runjs",
    "~/Library/Logs/RunJS",
    "~/Library/Preferences/me.lukehaas.runjs.plist",
    "~/Library/Saved Application State/me.lukehaas.runjs.savedState",
  ]
end
