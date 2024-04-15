cask "amie" do
  arch arm: "-arm64"

  version "240415.0.0"
  sha256 arm:   "69b4f84985b4ca01cbe4fea08105d412349ac53419bc8478be395fffe0348033",
         intel: "42a9fdfa824dad7c55f0f24b36eda55122743a3dc4889a504dd8aa3946c69986"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
