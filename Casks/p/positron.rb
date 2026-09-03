cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.0-256"
  sha256 arm:   "7c9e5943264eaa7cd213d277d4bc6670e08e50bdc08baa43b33706d8409bc7a0",
         intel: "cc6f0088561d549101948ce12019149f9f2e0427d9470a914118e094a79c9ad4"

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
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
