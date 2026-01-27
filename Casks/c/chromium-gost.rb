cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "144.0.7559.96"
  sha256 arm:   "678d06780a12cfde11c82a8aeffe311857df89c2ca169613211311e3d9daa359",
         intel: "8ff869d07c8a3f495d95cd910f4c7c6abea85a1ce7e5a6b9076d617b569300f7"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
