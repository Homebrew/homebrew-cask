cask "imdone" do
  version "1.17.5"
  sha256 "763bd54b92bc9b2c030aabd6627730a1a9cc1393dcb5921fa6bf8857db4e37d3"

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
