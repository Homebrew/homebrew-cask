cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "137.0.7151.69"
  sha256 arm:   "29977962837dd9607124ecb735bc52bd6cb817dbcbe3b5f0b73b6216d0c646e5",
         intel: "67ce6bdd9c5ee376bf54f70d99037dbd72672516936be5aa99051097e96d1870"

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
