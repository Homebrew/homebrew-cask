cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.4"
  sha256 arm:   "e838bfa170898ada254afaff5c8677f6718703b9ada96ee4a30c2163c0bb4b0a",
         intel: "4dea3b0929a213b103de80b090d264f08759fc1560dc32fc61c2200c2b87e905"

  url "https://github.com/Newspicel/sdrmm/releases/download/v#{version}/SDRmm_#{version}_#{arch}.dmg"
  name "SDR--"
  name "sdrmm"
  desc "Modular, client-server software-defined radio"
  homepage "https://github.com/Newspicel/sdrmm"

  auto_updates true
  depends_on macos: :monterey

  app "SDRmm.app"

  zap trash: [
    "~/Library/Application Support/dev.newspicel.sdrmm",
    "~/Library/Caches/dev.newspicel.sdrmm",
    "~/Library/WebKit/dev.newspicel.sdrmm",
  ]
end
