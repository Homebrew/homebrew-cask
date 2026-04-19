cask "cavalry" do
  version "2.7"
  sha256 :no_check

  url "https://cavalry.studio/downloads/latest/Cavalry.dmg"
  name "Cavalry"
  desc "Procedural motion design and animation software"
  homepage "https://cavalry.studio/"

  livecheck do
    url "https://cavalry.studio/docs/"
    regex(/Latest\s+version:\s*(?:<[^>]+>)?\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  app "Cavalry.app"

  zap trash: [
    "~/Library/Application Support/Cavalry",
    "~/Library/Preferences/Cavalry",
  ]
end
