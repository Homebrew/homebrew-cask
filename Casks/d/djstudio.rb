cask "djstudio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-apple"

  version "4.1.1"
  sha256 arm:   "23a3e8d4feed3c2e93fb937343f065a62004033cca3bb5a8e1ec11f07b8b8e27",
         intel: "02705f833e9254b37d31e66b866f2b70644e243869a3c1e03a81b64742d859f8"

  url "https://download.dj.studio/DJ.Studio-#{version}#{arch}.dmg"
  name "DJ.Studio"
  desc "DAW for DJs"
  homepage "https://dj.studio/"

  livecheck do
    url "https://dj.studio/download/latest/mac#{livecheck_arch}"
    regex(/DJ\.Studio[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "DJ.Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.app.sfl*",
    "~/Library/Application Support/DJ.Studio",
    "~/Library/Application Support/dj.studio.app",
    "~/Library/Preferences/dj.studio.app.plist",
    "~/Library/Saved Application State/dj.studio.app.savedState",
  ]
end
