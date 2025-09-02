cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.09.0-139"
  sha256 arm:   "8d64a4d26d671f55fdd86bca99f41430d2dd0d8a67f7d2324b3cfab583f6bc5e",
         intel: "8950c4ab0393e1d47b6e5b9c05c6611fcb457fdfa2424710062fd2bd351af710"

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
