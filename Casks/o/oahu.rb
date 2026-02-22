# typed: strict
# frozen_string_literal: true

cask "oahu" do
  version "1.0.24"
  sha256 arm:   "6f1d6a3029c7befed0f66e4043d7a84c37805b92ce40e5cc23f813a3f6c41419",
         intel: "6af9819d116dc2e34a09fc166f743aa1735e0682c36db2fb2e378956638fc163"

  arch arm: "arm64", intel: "x64"
  url "https://github.com/DavidObando/Oahu/releases/download/v#{version}/Oahu-#{version}-osx-#{arch}.dmg"
  name "Oahu"
  desc "Standalone Audible downloader and decrypter"
  homepage "https://github.com/DavidObando/Oahu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Oahu.app"

  zap trash: [
    "~/Library/Application Support/Oahu",
    "~/Library/Preferences/com.davidobando.oahu.plist",
    "~/Library/Saved Application State/com.davidobando.oahu.savedState",
  ]
end