cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.452"
  sha256 arm:   "43ae2a41f39ba0179db7f08fbf8e05d15ea6c5630e656dd8afdd794f0ba86bc0",
         intel: "e5f07e162641dde33b8fc3d377163e630d747b5a20863292a0c2337bac67d3e1"

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
