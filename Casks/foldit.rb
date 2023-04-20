cask "foldit" do
  version "1.0"
  sha256 :no_check

  url "https://fold.it/portal/files/app/Foldit-macos_x64.dmg"
  name "Foldit"
  desc "Crowdsourcing computer game"
  homepage "https://fold.it/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "Foldit.app"

  zap trash: "~/Library/Saved Application State/edu.washington.foldit.savedState"
end
