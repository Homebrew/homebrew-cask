cask "openlp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.3"
  sha256 arm:   "0763fa327de1ecf4066cf4b7366ea2d12bae248c5dc97bed8d79fbf4a565751d",
         intel: "885cf54c9b97c40f37621fbe9a234955aea76655254de03844285fa970cbe2ee"

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
