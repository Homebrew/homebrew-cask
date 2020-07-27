cask "macsvg" do
  version "1.1.7"
  sha256 "a0dbf7636296accf0cee1df7635e8f2a379d32bca48f055030143e0b11091bc8"

  # github.com/dsward2/macSVG/ was verified as official when first introduced to the cask
  url "https://github.com/dsward2/macSVG/releases/download/v#{version}/macSVG-v#{version}.zip"
  appcast "https://github.com/dsward2/macSVG/releases.atom"
  name "macSVG"
  homepage "https://macsvg.org/"

  depends_on macos: ">= :mojave"

  app "macSVG.app"

  zap trash: [
    "~/Library/Application Scripts/com.arkphone.macsvg",
    "~/Library/Containers/com.arkphone.macsvg",
  ]
end
