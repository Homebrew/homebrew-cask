cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.1-5"
  sha256 arm:   "06473964db6fe7c65a91cd17de277f108b63f435387b8151c55c0454f099df06",
         intel: "b21bc03b36b8ff2bb8e8b1c6950c48c3660ee7a084c754cf93148b851d1962dd"

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
