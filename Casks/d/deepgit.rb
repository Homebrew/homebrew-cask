cask "deepgit" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.003"
  sha256 arm:   "56b87d81e05fef9bd8c1f8b723e0835c16de251ab9ee95ccfc056293fb9abc53",
         intel: "e658026766e5e0b037e9f46c3f915fc792d44273e68351ffa0e9763a3112169d"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://www.syntevo.com/downloads/deepgit/deepgit-#{version.dots_to_underscores}-macos-#{arch}.dmg"
  name "DeepGit"
  desc "Tool to investigate the history of source code"
  homepage "https://www.syntevo.com/deepgit/"

  livecheck do
    url "https://www.syntevo.com/deepgit/download/"
    regex(%r{href=.*?/deepgit[._-]v?(\d+(?:[._]\d+)+)[._-]macos[._-]#{arch}\.dmg}i)
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
