cask "snipaste" do
  version "2.10.7"
  sha256 "5524cb604abe2efb8f29977ec66065f7df6e926ced1d11ad9898b0812c031591"

  url "https://download.snipaste.com/archives/Snipaste-#{version}.dmg"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://dl.snipaste.com/mac"
    regex(/Snipaste[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: [
    "~/.snipaste/",
    "~/Library/Preferences/com.Snipaste.plist",
  ]
end
