cask "fellow" do
  version "1.1.0"
  sha256 "4dd953ee57c6fafc030879c1fe0e48aacf9173720f4685c214befc034b07be5b"

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
