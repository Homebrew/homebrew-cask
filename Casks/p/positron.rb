cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.1-4"
  sha256 arm:   "ef7496447feb62c07c7423f46c40a5bfe7af4b7781d4efa116ffa685869de4c9",
         intel: "0583ec9afa01199443f616964065fbe21c6d2ba5123170d69ace83afdf9cb38f"

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
