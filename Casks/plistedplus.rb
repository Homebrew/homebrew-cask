cask "plistedplus" do
  version "1.0.65"
  sha256 "8752c338159b7e48e4d2fafe37e9f58ce299a5eef764d38267af26384ad3c083"

  url "https://github.com/ic005k/PlistEDPlus/releases/download/#{version}/PlistEDPlus_Mac.dmg"
  name "PlistEDPlus"
  desc "Plist file editor"
  homepage "https://github.com/ic005k/PlistEDPlus"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "PlistEDPlus.app"

  uninstall quit: "z.PlistEDPlus"

  zap trash: [
    "~/Library/Preferences/z.PlistEDPlus.plist",
    "~/Library/Saved Application State/z.PlistEDPlus.savedState",
  ]
end
