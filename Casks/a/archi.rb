cask "archi" do
  version "5.7.0,57"
  sha256 "dbfc38f9a29f8df4c62e38e5fe73a8b85b67bfbfe48e67dece4ae649ae1a6e57"

  url "https://github.com/archimatetool/archi.io/releases/download/#{version.csv.second}/Archi-Mac-Silicon-#{version.csv.first}.dmg",
      verified: "github.com/archimatetool/archi.io/"
  name "Archi"
  desc "Open-source ArchiMate modelling toolkit"
  homepage "https://www.archimatetool.com/"

  livecheck do
    url "https://www.archimatetool.com/download/"
    regex(%r{releases/download/(\d+)/Archi-Mac-Silicon-(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |n, v| "#{v},#{n}" }.uniq
    end
  end

  depends_on macos: ">= :big_sur"

  app "Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi",
    "~/Library/Logs/Archi",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end
