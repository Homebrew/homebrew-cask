cask "soduto" do
  version "1.0.1"
  sha256 "ccd412fce497bb9b7822fc702c65792b5354711b6dfc1e028fb12cd7f202931f"

  url "https://soduto.com/downloads/Soduto_v#{version}.dmg"
  name "Soduto"
  homepage "https://soduto.com/"

  livecheck do
    url "https://soduto.com/downloads/"
    strategy :page_match
    regex(%r{href=.*?/Soduto_v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Soduto.app"
end
