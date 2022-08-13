cask "qspace-pro" do
  version "2.9.18"
  sha256 "615595e4281a9d5c3cb9108de677e81f686fb832c332cf9d59f27d5a28f81292"

  url "https://cdn.awehunt.com/qs/rel/QSpace%20Pro_V#{version}.dmg"
  name "QSpace Pro"
  desc "Better Finder alternative"
  homepage "https://qspace.awehunt.com/"

  livecheck do
    url "https://qspace.awehunt.com/en-us/index.html"
    strategy :page_match
    regex(%r{href=.*?/QSpace%20Pro_V(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QSpace Pro.app"
end
