cask "devdocs" do
  version "0.7.2"
  sha256 "88e4c14cd5b7f856796764591107e4e8e78a82de1384b737536a56d97b389f2d"

  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  name "DevDocs App"
  desc "Full-featured desktop app for DevDocs.io"
  homepage "https://github.com/egoist/devdocs-desktop/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "DevDocs.app"

  zap trash: [
    "~/.devdocs",
    "~/Library/Application Support/DevDocs",
    "~/Library/Logs/DevDocs",
    "~/Library/Preferences/sh.egoist.devdocs.plist",
    "~/Library/Saved Application State/sh.egoist.devdocs.savedState",
  ]
end
