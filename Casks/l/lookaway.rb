# frozen_string_literal: true

cask "lookaway" do
  version "1.4.1"
  sha256 "0f211bad3302453f28bbde874ede70e5c048d1ff09e8d53eadbb977b40a9e0b3"

  url "https://github.com/mysticalbits/lookaway-releases/releases/download/#{version}/LookAway.dmg",
      verified: "github.com/mysticalbits/lookaway-releases/"
  name "LookAway"
  desc "Reduce dry eyes and digital strain"
  homepage "https://lookaway.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "LookAway.app"

  uninstall quit: "com.mysticalbits.lookaway"

  zap trash: "~/Library/Application Support/LookAway"
end
