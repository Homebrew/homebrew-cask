cask "kvirc" do
  version "5.0.0"
  sha256 "d0793ab8a14de5388bc36f99945191120ec3349ab3f2c24f76f4dd11ab9b4874"

  url "ftp://ftp.kvirc.net/pub/kvirc/#{version}/binary/macosx/KVIrc-#{version}.dmg"
  name "KVIrc"
  desc "IRC Client"
  homepage "http://kvirc.net/"

  livecheck do
    url "https://github.com/kvirc/KVIrc"
    strategy :git
  end

  depends_on macos: ">= :high_sierra"

  app "KVIrc.app"

  zap trash: [
    "~/Library/Preferences/com.kvirc.kvirc.plist",
    "~/Library/Saved Application State/com.kvirc.kvirc.savedState",
    "~/.kvirc*.rc",
  ]
end
