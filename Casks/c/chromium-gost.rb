cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "134.0.6998.44"
  sha256 arm:   "ff5bf932efc38bfb689526d171f28bec523c98bbf4540e96f13cb1c2e0f62b12",
         intel: "70c3685cb3a0c2e912485c723cc1a7a2f3549fefcfd540bf4bf07a9fc9522ae9"

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
