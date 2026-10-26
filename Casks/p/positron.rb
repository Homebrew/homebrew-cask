cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.2-3"
  sha256 arm:   "253f0b625e3451ad1049492f751f522c1335d95430525384ed7f5652f570449e",
         intel: "21e386e448b873ca92ef31d58c8bb59fdf43ab1fdff20ad84358b4fcbcd0d200"

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
