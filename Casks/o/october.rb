cask "october" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0"
  sha256 arm:   "a97993cf52e985c92c2a287a44702d87a0c692402b58934925d6e75d1b19d8aa",
         intel: "4342c2adc3125a3a8522ad14f72c50d43377ba0b98391e68314dfbd08392ef54"

  url "https://github.com/marcus-crane/october/releases/download/v#{version}/october_#{version}_darwin_#{arch}.zip",
      verified: "github.com/marcus-crane/october/"
  name "October"
  desc "GUI for retrieving Kobo highlights and syncing them with Readwise"
  homepage "https://october.utf9k.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "October.app"

  zap trash: "~/Library/Application Support/october"
end
