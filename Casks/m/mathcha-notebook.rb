cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.455"
  sha256 arm:   "73a71405d95ca9cfb11105cae3650c06e137851b7d0116111f3d191f7a5ae06f",
         intel: "2812df3256c07fa0ec14df98275e5994040dc56cf23b233b724ba508d9c63e5b"

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
