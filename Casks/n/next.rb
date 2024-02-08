cask "next" do
  version "2.052"
  sha256 :no_check

  url "https://next.atlas.engineer/static/release/next-macos-webkit.dmg"
  name "Next Browser"
  desc "Web browser"
  homepage "https://next.atlas.engineer/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Next.app"

  zap trash: "~/Library/Caches/next.browser"
end
