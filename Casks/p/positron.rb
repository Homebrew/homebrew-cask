cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.1-4"
  sha256 arm:   "a6fb8186ee8bda29bd086d3cf9d21de342bcea049d8359871ffaf3c9bd23509a",
         intel: "b512a6ef5809a91226227d59636479e1b306bd33fe20b17ffc30bffa77332e4e"

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
