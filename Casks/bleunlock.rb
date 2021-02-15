cask "bleunlock" do
  version "1.10.1"
  sha256 "60ccc7dbe86521b29c0f1ac605db69a90713765abc1532975b61473258beffc1"

  url "https://github.com/ts1/BLEUnlock/releases/download/#{version}/BLEUnlock-#{version}.zip"
  appcast "https://github.com/fitztrev/shuttle/releases.atom"
  name "BLEUnlock"
  desc "Lock and unlock your Mac with an iPhone, Apple Watch, or another bluetooth low energy device"
  homepage "https://github.com/ts1/BLEUnlock"

  app "BLEUnlock.app"
end
