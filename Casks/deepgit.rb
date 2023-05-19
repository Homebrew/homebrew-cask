cask "deepgit" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.3.1"
  sha256 arm:   "44bbdb1269e8667a4ccbf52ec7d80bb491600f2f1d25727b2c97ace6e64ca14c",
         intel: "a97d912f4e32bf791dbc0e4522d51c6002fbc413f8cedb7ba41cd2dbba27e593"

  url "https://www.syntevo.com/downloads/deepgit/deepgit-#{arch}-#{version.dots_to_underscores}.dmg"
  name "DeepGit"
  desc "Tool to investigate the history of source code"
  homepage "https://www.syntevo.com/deepgit/"

  livecheck do
    url "https://syntevo.com/deepgit/download"
    regex(%r{href=.*?/deepgit-#{arch}-(\d+(?:_\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  app "DeepGit.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.deepgit.plist",
    "~/Library/Preferences/DeepGit",
    "~/Library/Saved Application State/com.syntevo.deepgit.savedState",
  ]
end
