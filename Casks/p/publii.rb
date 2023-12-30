cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.44.3"
  sha256 arm:   "31153affd45df7417d84edb6019dde429de7d820371c9158957bd880860f9bdd",
         intel: "29373c96fb6c2bc8d7899879caa5ab14c7a5ced0fb27b906f62f6c34988fe322"

  url "https://cdn.getpublii.com/Publii-#{version}-#{arch}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    regex(/href=.*?Publii[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg/i)
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
