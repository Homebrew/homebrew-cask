cask "openlp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.7"
  sha256 arm:   "6630b1d7e347c404bee5599fec636e795171f39c7541df0126af7d5d555976f4",
         intel: "5ce5f179a615c1c87699ec794d8424dd3c0ee698c6167a0e8f18f06e6fa68148"

  url "https://get.openlp.org/#{version}/OpenLP-#{version}-#{arch}.dmg"
  name "OpenLP"
  desc "Worship presentation software"
  homepage "https://openlp.org/"

  livecheck do
    url "https://get.openlp.org"
    regex(%r{href=['"]?(\d+(?:\.\d+)+)(?!rc\d+)/['"]?}i)
  end

  app "OpenLP.app"

  zap trash: [
    "~/Library/Application Support/openlp",
    "~/Library/Caches/com.apple.helpd/Generated/org.openlp.OpenLP.help*",
    "~/Library/Preferences/org.openlp.OpenLP.plist",
    "~/Library/Preferences/org.openlp.plist",
    "~/Library/Saved Application State/org.openlp.OpenLP.savedState",
  ]
end
