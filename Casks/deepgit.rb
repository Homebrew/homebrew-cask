cask "deepgit" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.3"
  sha256 arm:   "ea6730f24502dfb33c69a49d72c222f10854888a83a44aaec56da5afc89b770d",
         intel: "695c3a76cf28b1d6f3cc46349214e081a7d57166d17d131227541e50c289b4a7"

  url "https://www.syntevo.com/downloads/deepgit/deepgit-#{arch}-#{version.dots_to_underscores}.dmg"
  name "DeepGit"
  desc "Tool to investigate the history of source code"
  homepage "https://www.syntevo.com/deepgit/"

  livecheck do
    url "https://syntevo.com/deepgit/download"
    strategy :page_match do |page|
      v = page[%r{href=.*?/deepgit-#{arch}-(\d+(?:_\d+)+)\.dmg}i, 1]
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
