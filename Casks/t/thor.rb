cask "thor" do
  version "1.5.14"
  sha256 "20061ec1fd2798d1a81c977eee10cbe4fa48e7b31281f047e0da89ee8b0c8b11"

  url "https://github.com/gbammc/Thor/releases/download/#{version}/Thor_#{version}.zip"
  name "Thor"
  desc "Utility to switch between applications"
  homepage "https://github.com/gbammc/Thor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Thor.app"

  uninstall quit: "me.alvinzhu.Thor"

  zap trash: [
    "~/Library/Application Scripts/me.alvinzhu.Thor",
    "~/Library/Containers/me.alvinzhu.Thor",
  ]
end
