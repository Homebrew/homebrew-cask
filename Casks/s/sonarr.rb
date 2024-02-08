cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0.748"
  sha256 arm:   "4f6cfa4a0451079df914d20ed695fbf7f5ba2a5014788f8833ee16ce57d1b54a",
         intel: "c5e1c185edcd0bd3cc410ceb390c6f3ea68601124f2cdc45b2fc6b3e1f0b266f"

  url "https://download.sonarr.tv/v#{version.major}/main/#{version}/Sonarr.main.#{version}.osx-#{arch}-app.zip"
  name "Sonarr"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url "https://download.sonarr.tv/v4/main/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
