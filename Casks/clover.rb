cask "clover" do
  version "0.1.8"
  sha256 "1f46b0d69d90627e07cc15e481a3ce5f68ede92eecb971b250c66a2674f346ac"

  url "https://clover-desktop-app.s3.amazonaws.com/Clover-#{version}.dmg",
      verified: "clover-desktop-app.s3.amazonaws.com"
  name "clover"
  desc "Notes, whiteboarding, todos, and a daily planner in one simple tool"
  homepage "https://cloverapp.com/"

  app "Clover.app"
end
