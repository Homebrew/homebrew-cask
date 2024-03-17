cask "foldit" do
  version "33"
  sha256 :no_check

  url "https://files.ipd.uw.edu/pub/foldit/Foldit-macos_x64.dmg",
      verified: "files.ipd.uw.edu/pub/foldit/"
  name "Foldit"
  desc "Crowdsourcing, protein folding computer game"
  homepage "https://fold.it/"

  livecheck do
    url "https://fold.it/releases"
    regex (/<h2[^>]*?>[^<]*?(\d+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Foldit.app"

  zap trash: "~/Library/Saved Application State/edu.washington.foldit.savedState"
end
