cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.0-308"
  sha256 arm:   "94cac1bea2aa67bad066da5af9d73f44f372777209548eb91f396bfc50e26801",
         intel: "008f4b8641583a2a18b4c59780910773f2bbfcd4568f256ddbef9baea0e0e46d"

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

  depends_on macos: :monterey

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.posit.positron.sfl*",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/co.posit.positron.plist",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
