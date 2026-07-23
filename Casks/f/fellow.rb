cask "fellow" do
  version "5.5.0"
  sha256 "3f3179c7edae00b56dbcfaf5b4aa6bcc235a5d105f0546df24a9ae26cfb78c20"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/universal/Fellow-#{version}-universal.dmg"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  livecheck do
    url "https://fellow.app/desktop/download/darwin/latest/"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "Fellow.app"

  zap trash: [
    "~/Library/Application Support/Fellow",
    "~/Library/Preferences/com.electron.fellow.plist",
  ]
end
