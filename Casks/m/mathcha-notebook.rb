cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.463"
  sha256 arm:   "9756c366cc009c8d31188fe2b7c044cda3443df3afb2c10aac2c56367aa03adf",
         intel: "c81275f2471d2c5707c7327e0955a1652134b9b539acf9fbf30a6e340348e634"

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
