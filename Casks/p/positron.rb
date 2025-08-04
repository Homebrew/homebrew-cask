cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.0-130"
  sha256 arm:   "99fa687e500420b1986d23a0ea5efb09c9ac2a684f701584e1ad24ac1adea6f5",
         intel: "04b2bb33c99465755d50698e3bcaf9bed650b20e33dbacc6d4a56ccd3aac217a"

  url "https://cdn.posit.co/positron/releases/mac/#{arch}/Positron-darwin-#{version}-#{arch}.zip"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/#{arch}/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
