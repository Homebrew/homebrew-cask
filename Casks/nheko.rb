cask "nheko" do
  version "0.9.1,dfab0c92"
  sha256 "a795ebee28df116997b2da9d20db132a8a07a35d438eb9bf9be98467f1bb2f27"

  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version.before_comma}/nheko-v#{version.before_comma}-#{version.after_comma}-#{version.after_comma}.dmg",
      verified: "github.com/Nheko-Reborn/nheko/"
  name "Nheko"
  desc "Desktop client for the Matrix protocol"
  homepage "https://nheko-reborn.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nheko.app"
end
