cask "macsvg" do
  version "1.1.7"
  sha256 "a0dbf7636296accf0cee1df7635e8f2a379d32bca48f055030143e0b11091bc8"

  url "https://github.com/dsward2/macSVG/releases/download/v#{version}/macSVG-v#{version}.zip",
      verified: "github.com/dsward2/macSVG/"
  name "macSVG"
  desc "App for designing HTML5 Scalable Vector Graphics"
  homepage "https://macsvg.org/"

  depends_on macos: ">= :mojave"

  app "macSVG.app"

  zap trash: [
    "~/Library/Application Scripts/com.arkphone.macsvg",
    "~/Library/Containers/com.arkphone.macsvg",
  ]
end
