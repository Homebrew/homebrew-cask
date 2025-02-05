cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "133.0.6943.53"
  sha256 arm:   "e151662e08bf6d773fd6733948d7931d84a823c3e06eb715b645035f01f93596",
         intel: "adbe73331b08876df5a74049dcce2dd63a8045c33654f440006554bc0f1bd67e"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :big_sur"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
