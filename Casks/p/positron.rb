cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.12.1-4"
  sha256 arm:   "e9c22e2e0a6811fcc68a3cd79b86aaf8ed2612bd0ee1784235af9ea67efc2ff5",
         intel: "e0ded7fb72b9a3a3a93ee873d205439bf4e7cf07eb78879b13bcd21aa594aa9e"

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
