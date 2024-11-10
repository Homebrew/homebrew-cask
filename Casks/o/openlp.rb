cask "openlp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.4"
  sha256 arm:   "f038b012d4565e57b6d9a722837a4dddae53de0d1377d96b67b70407be0052b2",
         intel: "6a5a855efb6580fc81006dd7885f1753d85152f757ac5048889f54db58d30214"

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
