cask "openlp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.2"
  sha256 arm:   "6cd23988398bbbf0a5e33fc027dc5866990745ac518135385eacc3fbff2ee2cb",
         intel: "16a7f9552a4e0eafd0c6a241e47b7bf8f50d4145cf0b294404b8093a060b4584"

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
