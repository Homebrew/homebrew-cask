cask "mathcha-notebook" do
  version "1.0.439"
  sha256 "84f3e8a35f1f24042bb7042da4d08cd644773bf15de17411d5024e4d55d8ddbf"

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-#{version}-mac.zip"
  name "Mathcha Notebook"
  desc "Mathematics editor"
  homepage "https://www.mathcha.io/"

  livecheck do
    url "https://notebook-downloads.mathcha.io/public/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Mathcha Notebook.app"

  zap trash: [
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
