cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "135.0.7049.85"
  sha256 arm:   "ec2907ba53ffb00d7b64a9e7a7997311b9b7acddd08f9b0ffeb4332a43726cbc",
         intel: "bf9b1ffcec85d80663fdf853183b616319efd6c89d7ce216cbf75940e86c47f6"

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
