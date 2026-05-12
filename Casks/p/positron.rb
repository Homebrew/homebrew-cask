cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.1-2"
  sha256 arm:   "7af5a1523f320a3ac46e77d1249baa313590128717328f90513584af126968d3",
         intel: "c1c4ba30c1471679295d8c4d992fb430b2b162f9f045bddd4b4abadcbde5ee55"

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
