cask "imdone" do
  version "1.16.4"
  sha256 "4abca0772c814fa95b2474ef0d9e209f9a15310b583815f760595d781b3fd308"

  url "https://imdone.io/downloads/imdone-#{version}.dmg"
  name "imdone"
  desc "Kanban board that works on plain text markdown files or code"
  homepage "https://imdone.io/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/imdone-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "imdone.app"

  zap trash: [
    "~/Library/Application Support/imdone",
    "~/Library/Preferences/io.imdone.app.plist",
    "~/Library/Saved Application State/io.imdone.app.savedState",
    "~/Library/Logs/imdone",
  ]
end
