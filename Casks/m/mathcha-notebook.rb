cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.454"
  sha256 arm:   "3828cd6514569439928ef516227c4c909cdd8e653878bbadbb0d5a0e6f0a4154",
         intel: "ba99d03b4dd374424ee0fdbd4cfd9528e664594915385984a112b6ffecbeea35"

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-#{version}#{arch}-mac.zip"
  name "Mathcha Notebook"
  desc "Mathematics editor"
  homepage "https://www.mathcha.io/"

  livecheck do
    url "https://notebook-downloads.mathcha.io/public/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Mathcha Notebook.app"

  zap trash: [
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
