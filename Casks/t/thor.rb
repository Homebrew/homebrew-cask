cask "thor" do
  version "1.5.16"
  sha256 "a22d11d609fc87a7e67de1002077b47f6596d73cd82cdce4457bc88a6839b8d2"

  url "https://github.com/gbammc/Thor/releases/download/#{version}/Thor_#{version}.zip"
  name "Thor"
  desc "Utility to switch between applications"
  homepage "https://github.com/gbammc/Thor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Thor.app"

  uninstall quit: "me.alvinzhu.Thor"

  zap trash: [
    "~/Library/Application Scripts/me.alvinzhu.Thor",
    "~/Library/Containers/me.alvinzhu.Thor",
  ]
end
