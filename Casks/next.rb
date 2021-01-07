cask "next" do
  version "1.2.0"
  sha256 :no_check

  url "https://next.atlas.engineer/static/release/next-macos-webkit.dmg"
  name "Next Browser"
  homepage "https://next.atlas.engineer/"

  livecheck do
    url "https://github.com/atlas-engineer/next/releases"
    strategy :github_latest
  end

  app "Next.app"

  zap trash: "~/Library/Caches/next.browser"
end
