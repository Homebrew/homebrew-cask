cask "loom" do
  version "0.49.3"
  sha256 "f4ebf2a59d15c96fb651d8af22ec8b98623384350e30e933c8b91c5e1da56ddd"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
