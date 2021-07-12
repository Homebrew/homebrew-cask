# typed: false
# frozen_string_literal: true

cask "little-fingers" do
  version "1.1"
  sha256 :no_check

  url "https://shauninman.com/assets/downloads/littlefingers.zip"
  name "Little Fingers"
  desc "Let you lockdown keyboard and trackpad input"
  homepage "https://shauninman.com/archive/2017/02/04/little_fingers"

  app "littlefingers/Little Fingers.app"

  zap trash: []
end
