cask "renameclick" do
  arch arm: "arm64", intel: "x64"

  version "2.7.5"
  sha256 arm:   "61e552b461f783542cd5bf8d7ed6e4264958f7f1e61eb8e0234a4f1256d8086e",
         intel: "17fe19594d58bc6e96ced6b01b1e934598239c542ec5c5e0061dc7982ec989a5"

  url "https://github.com/noemaVision/renameclick/releases/download/v#{version}/RenameClick-#{version}-#{arch}.dmg",
      verified: "github.com/noemaVision/renameclick/"
  name "RenameClick"
  desc "Desktop application to batch rename files using AI"
  homepage "https://rename.click/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "RenameClick.app"
end
