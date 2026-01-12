cask "menustow" do
  version "0.1.0"
  sha256 "b6dd649b34efe1c01f84b8778400d3de11d5456ae900db04c5cd806ef38a77c9"

  url "https://github.com/lswank/menustow/releases/download/v#{version}/menustow-#{version}.zip",
      verified: "github.com/lswank/menustow/"
  name "menustow"
  desc "Menu bar management tool with notch-aware layout"
  homepage "https://menustow.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "menustow.app"
end
