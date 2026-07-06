cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.0-365"
  sha256 arm:   "9feeee5502e433b3750ab2c50bbe7aa4e106c3bc03ecfcaf048864ab7b878204",
         intel: "1ac8bfed8da518b5845e7756819a1d64f3c3c7aff0a95595649903c6a0885d48"

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
