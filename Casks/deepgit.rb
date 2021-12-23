cask "deepgit" do
  version "4.2.1"
  sha256 "f872cef7524216bae6c97aefaf5edc4b3d5b2048f00c370e829222cbfc55ed9f"

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  name "DeepGit"
  desc "Tool to investigate the history of source code"
  homepage "https://www.syntevo.com/deepgit/"

  livecheck do
    url "https://syntevo.com/deepgit/download"
    strategy :page_match do |page|
      v = page[%r{href=.*?/deepgit-macosx-(\d+(?:_\d+)+)\.dmg}i, 1]
      next if v.blank?

      v.tr("_", ".")
    end
  end

  app "DeepGit.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.deepgit.plist",
    "~/Library/Preferences/DeepGit",
    "~/Library/Saved Application State/com.syntevo.deepgit.savedState",
  ]
end
