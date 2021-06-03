cask "suuntodm5" do
  version "1.5.2"
  sha256 :no_check

  url "https://dm5.movescount.com/SuuntoDM5.dmg",
      verified: "dm5.movescount.com"
  name "SuuntoDM5"
  desc "With Suunto DM5 you can easily create dive plans and analyze your dives"
  homepage "https://www.suunto.com/Support/software-support/dm5/"

  livecheck do
    url "https://dm5.movescount.com/ReleaseNotes.txt"
    strategy :page_match
    regex(/Suunto DM5 (\d+(\.\d+)*)/i)
  end

  auto_updates true

  app "SuuntoDM5.app"

  zap trash: "~/Library/Logs/SuuntoDM5"
end
