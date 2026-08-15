# typed: strict
# frozen_string_literal: true

cask "saega" do
  arch arm: "arm64"

  version "1.0.17"
  sha256 "1e0f2959ed6a36b21cc9fc165d4aecebf37f4c3b6283107b8ed5fff03ed6b07e"

  url "https://storage.googleapis.com/saega-downloads/Saega-#{version}.dmg"
  name "Saega"
  desc "Privacy-first dictation app built for Swedish and Norwegian"
  homepage "https://saega.app/"

  livecheck do
    url "https://saega.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura
  depends_on arch:  :arm64

  app "Saega.app"

  zap trash: [
    "~/Library/Application Support/Saega",
    "~/Library/Caches/app.saega.app",
    "~/Library/Logs/Saega",
    "~/Library/Preferences/app.saega.app.plist",
  ]
end
