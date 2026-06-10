cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.458"
  sha256 arm:   "d1953217d870c201eb14f35bc1d4f8f332fa40c07cc3ea952747a5deed409ac1",
         intel: "a2840427b9cd0f15628fa685dbdfba927ef93bceff9031822f7b84a7db647379"

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
