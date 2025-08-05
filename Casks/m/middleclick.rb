cask "middleclick" do
  version "3.1.0"
  sha256 "ed933a932164b16e0f9c5c06b17b8ae05c759b3e442513be509deb672097e4d5"

  url "https://github.com/artginzburg/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  name "MiddleClick"
  desc "Utility to extend trackpad functionality"
  homepage "https://github.com/artginzburg/MiddleClick"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "MiddleClick.app"

  uninstall quit:       "art.ginzburg.MiddleClick",
            login_item: "MiddleClick"

  zap trash: "~/Library/Preferences/art.ginzburg.MiddleClick.plist"
end
