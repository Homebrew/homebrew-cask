cask "openlp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.5"
  sha256 arm:   "8d76666bdc5370e724c26287ac4956a6a1ec7a3d9ce7a130315cfb2ff378d500",
         intel: "9a7f1bb91edacc2254ebff8340d5c681484c007205db6c087716cec330363b78"

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
