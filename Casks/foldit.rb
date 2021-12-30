cask "foldit" do
  version :latest
  sha256 :no_check

  url "https://fold.it/portal/files/app/Foldit-macos_x64.dmg"
  name "Foldit"
  homepage "https://fold.it/"

  depends_on macos: ">= :sierra"

  app "Foldit.app"

  zap trash: "~/Library/Saved Application State/edu.washington.foldit.savedState"
end
