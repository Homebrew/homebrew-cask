cask "abricotine" do
  version "1.1.4"
  sha256 "3831f239b5e52374addac1740abb3d4e4a47b91771f5bd21a91adf7a103ca9de"

  url "https://github.com/brrd/Abricotine/releases/download/v#{version}/Abricotine-#{version}-mac.zip",
      verified: "github.com/brrd/Abricotine/"
  name "abricotine"
  desc "Markdown editor with inline preview"
  homepage "https://abricotine.brrd.fr/"

  app "Abricotine.app"

  zap trash: [
    "~/Library/Application Support/Abricotine",
    "~/Library/Preferences/com.electron.abricotine.plist",
  ]
end
