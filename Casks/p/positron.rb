cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.1-2"
  sha256 arm:   "23e2f9eed067b540650d78ec252e8b53aad10098665a0050b507f20144e70400",
         intel: "49742551f9a823f43ffc4d68f2ee0896189e0aa7fd140041ec42be4be736c621"

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
