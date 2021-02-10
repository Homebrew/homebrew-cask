cask "fellow" do
  version "1.0.21"
  sha256 "254f1bc92fec95dc5ae5217f348868344b965999e2432a4a9d747c7f80d4cffc"

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
