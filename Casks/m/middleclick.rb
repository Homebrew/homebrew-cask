cask "middleclick" do
  version "3.0.1"
  sha256 "5b512d9d76f83a019c630c240292906682cea1c085fd834030a798e091640589"

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
