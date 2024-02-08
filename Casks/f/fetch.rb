cask "fetch" do
  version "5.8.3"
  sha256 "249b7d870fd8feb480285efaea57cfc00f062f4d55bd8d2ae202856275da1065"

  url "https://fetchsoftworks.com/fetch/download/Fetch_#{version}.zip"
  name "Fetch"
  desc "File transfer client"
  homepage "https://fetchsoftworks.com/fetch/"

  livecheck do
    url "https://updates.fetchsoftworks.com/list/fetch-#{version.major}K0-release.xml"
    strategy :sparkle, &:short_version
  end

  app "Fetch.app"
end
