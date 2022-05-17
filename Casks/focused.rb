cask "focused" do
  version "3.4,1839"
  sha256 :no_check

  url "https://www.codebots.co.uk/download/Focused"
  name "Focused"
  desc "Markdown writing app"
  homepage "https://codebots.co.uk/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  app "Focused.app"
end
