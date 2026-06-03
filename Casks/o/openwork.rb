cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "c9219c7626e352ff262103aba7b9533f31cbe46aed750b268b5aa0c9ab70a860",
         intel: "bbfb0af44dc371f52a6c4ea6b1dc0ca300fd430ecd43fde1c7a3f4b145196095"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-mac-#{arch}-#{version}.dmg",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "OpenWork.app"

  zap trash: [
    "~/Library/Application Support/OpenWork",
    "~/Library/Caches/OpenWork",
    "~/Library/Preferences/com.differentai.openwork.plist",
  ]
end
