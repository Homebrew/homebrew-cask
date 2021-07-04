cask "fellow" do
  version "1.0.34"
  sha256 "1fcd046988cce711c9d38c15386c8803fadf2f13a7e99a6072aec5a6c940fe0b"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/Fellow.dmg"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  livecheck do
    url "https://fellow.app/desktop/download/darwin/latest/"
    strategy :header_match
  end

  app "Fellow.app"
end
