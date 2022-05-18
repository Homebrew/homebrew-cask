cask "next" do
  version "1.2.0"
  sha256 :no_check

  url "https://next.atlas.engineer/static/release/next-macos-webkit.dmg"
  name "Next Browser"
  desc "Web browser"
  homepage "https://next.atlas.engineer/"

  app "Next.app"

  zap trash: "~/Library/Caches/next.browser"

  caveats do
    discontinued
  end
end
