cask "second-life-viewer" do
  version "6.4.6.545962"
  sha256 "f891c260ba363cb6ce99823b35fa60c316f3bcff2003b0df6c646697963e1e5c"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  appcast "https://secondlife.com/support/downloads/"
  name "Linden Lab Second Life Viewer"
  homepage "https://secondlife.com/"

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
