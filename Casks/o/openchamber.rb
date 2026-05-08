cask "openchamber" do
  arch arm: "arm64", intel: "x64"

  version "1.10.3"
  sha256 arm:   "0072e85b3093e7ceba0e4004fe7b96f76a21a770a6cef17a7e8d201a6759acdd",
         intel: "53084112bb3416ed1cb9c196d76e555ef30bcd04c925c96d5053f006dca72505"

  url "https://github.com/openchamber/openchamber/releases/download/v#{version}/OpenChamber-#{version}-#{arch}.dmg"
  name "OpenChamber"
  desc "Rich interface for OpenCode"
  homepage "https://github.com/openchamber/openchamber"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "OpenChamber.app"

  zap trash: "~/.config/openchamber"
end
