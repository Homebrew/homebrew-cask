cask "fellow" do
  version "1.4.0"
  sha256 "06a40efd20e5f8f13400030ecb7605c25a1f55cac3ddd4b70e8daf67a1f90547"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/universal/Fellow-#{version}-universal.dmg"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  livecheck do
    url "https://fellow.app/desktop/download/darwin/latest/"
    strategy :header_match
  end

  app "Fellow.app"

  zap trash: [
    "~/Library/Application Support/Fellow",
    "~/Library/Preferences/com.electron.fellow.plist",
  ]
end
