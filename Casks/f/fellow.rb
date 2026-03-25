cask "fellow" do
  version "5.2.5"
  sha256 "5075ca8c9af35d9e238b94d6c963ba1bd4ec03fb15ed2650520c3bc5226f8598"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/universal/Fellow-#{version}-universal.dmg"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  livecheck do
    url "https://fellow.app/desktop/download/darwin/latest/"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Fellow.app"

  zap trash: [
    "~/Library/Application Support/Fellow",
    "~/Library/Preferences/com.electron.fellow.plist",
  ]
end
