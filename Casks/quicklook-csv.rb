cask "quicklook-csv" do
  version "1.3"
  sha256 "e052e89f8003aed08bb2058e3fb3335ac0a5cdaa0171bfb23b762976e095ef5b"

  url "https://github.com/p2/quicklook-csv/releases/download/#{version}/QuickLookCSV-#{version}.dmg"
  name "QuickLookCSV"
  homepage "https://github.com/p2/quicklook-csv"

  livecheck do
    url :url
    strategy :git
  end

  qlplugin "QuickLookCSV.qlgenerator"
end
