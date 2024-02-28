cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "122.0.6261.94"
  sha256 arm:   "210288f55b027fc7112e8743152ec686184fd3ae0647ca16237c1191f2a37558",
         intel: "07bdf8bef5eb21501f6478cc4fb15261dbcbd3fb3a1f6adb693557174428fde3"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :catalina"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
