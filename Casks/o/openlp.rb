cask "openlp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.6"
  sha256 arm:   "42962f65bad08e4ef21877e803ed3bc200141dd83eb26ea443c3ae6bbcf7716c",
         intel: "5d4ac7c4f068b38515faf70ae34f8023a79c2b331f6a104bab14fc734a592cfb"

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
