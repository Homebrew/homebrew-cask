cask "macsvg" do
  version "1.2.0"
  sha256 "c25105533150f5f9d28e6b08ac20f346f49999f70af55fa0a3aa4d6093aa37ec"

  url "https://github.com/dsward2/macSVG/releases/download/v#{version}/macSVG-v#{version.major_minor}.zip",
      verified: "github.com/dsward2/macSVG/"
  name "macSVG"
  homepage "https://macsvg.org/"

  depends_on macos: ">= :mojave"

  app "macSVG.app"

  zap trash: [
    "~/Library/Application Scripts/com.arkphone.macsvg",
    "~/Library/Containers/com.arkphone.macsvg",
  ]
end
