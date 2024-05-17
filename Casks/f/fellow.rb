cask "fellow" do
  version "1.4.33"
  sha256 "46285629f3ef03ff8821a4cf8189a2f93152f6313b21aa7ffdf90766a4a18d11"

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
