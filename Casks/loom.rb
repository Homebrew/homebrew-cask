# typed: false
# frozen_string_literal: true

cask "loom" do
  version "0.100.2"

  if Hardware::CPU.intel?
    sha256 "6e4c6cdb6579fb7ffc5a08748e56cf9681108aa96c7935b2028507ea15eafd89"
    url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  else
    sha256 "b6049e2a128f7f3f562e367591240f7d4473ea783d28a63cfb3094f57c8b90af"
    url "https://cdn.loom.com/desktop-packages/Loom-#{version}-arm64.dmg"
  end
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"
end
