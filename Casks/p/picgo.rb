cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "640dd021a93ecbe782d3a16517aad7c32c03fbfa23b9725da7e27372d680cf06",
         intel: "f7d065fbf762609a0d08681400011f4eb3521372c80db99b49c43e05b915f014"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-#{arch}.dmg"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "PicGo.app"

  zap trash: [
    "~/Library/Application Support/picgo",
    "~/Library/Preferences/com.molunerfinn.picgo.plist",
    "~/Library/Services/Upload pictures with PicGo.workflow",
  ]
end
