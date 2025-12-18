cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.12.2-5"
  sha256 arm:   "a285da1ae7590ec4b1fce372200adf2b50ba0f10f426f7b2c4dada68474585ff",
         intel: "6a0d266117461d8c6db9d866fcc6edcb9d7e29eee7626549c5c89a51539fb370"

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

  depends_on macos: ">= :big_sur"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
