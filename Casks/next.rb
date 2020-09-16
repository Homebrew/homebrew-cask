cask "next" do
  version "1.2.0"
  sha256 "27d8e5a03678b6f4d1804d47856656546bb170f73b560fdf6c9b51853007f3a4"

  url "https://next.atlas.engineer/static/release/next-macos-webkit.dmg"
  appcast "https://github.com/atlas-engineer/next/releases.atom"
  name "Next Browser"
  homepage "https://next.atlas.engineer/"

  app "Next.app"

  zap trash: "~/Library/Caches/next.browser"
end
