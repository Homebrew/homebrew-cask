cask "smartgit" do
  arch arm: "arm64", intel: "x86_64"

  version "25.1.110"
  sha256 arm:   "ef09dced456c44b6692b258a377142475b814c768a6ff234007d32a10f48053c",
         intel: "fe49c038efd923b48850a3d0746b5e1bb6ddf8762fb27994a33450ac44bbfeb6"

  url "https://download.smartgit.dev/smartgit/smartgit-#{version.dots_to_underscores}-macos-#{arch}.dmg"
  name "SmartGit"
  desc "Git client"
  homepage "https://www.smartgit.dev/"

  livecheck do
    url "https://www.smartgit.dev/download/"
    regex(/href=.*?smartgit[._-]v?(\d+(?:[._]\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :big_sur"

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartgit.plist",
    "~/Library/Preferences/SmartGit",
    "~/Library/Saved Application State/com.syntevo.smartgit.savedState",
  ]
end
