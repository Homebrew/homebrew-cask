cask "prepros" do
  arch arm: "-Mac"

  version "7.40.6"
  sha256 arm:   "37adff852e643a0dea7cb59beea5596461f33921d37a74c0b213e6a62dfe079b",
         intel: "da2ea646253790d967cd886956057493dd5b72b9b6ad4b6e8759f0713f719959"

  url "https://downloads.prepros.io/v#{version.major}/#{version}/Prepros#{arch}-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/api/v#{version.major}/version/darwin/stable"
    strategy :json do |json|
      json.dig("data", "version")
    end
  end

  depends_on :macos

  app "Prepros.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.prepros.prepros.sfl*",
    "~/Library/Application Support/Prepros",
    "~/Library/Application Support/Prepros-#{version.major}",
    "~/Library/Preferences/io.prepros.prepros.plist",
    "~/Library/Saved Application State/io.prepros.prepros.savedState",
  ]
end
