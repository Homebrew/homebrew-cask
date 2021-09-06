cask "fellow" do
  version "1.0.36"
  sha256 "b70b7de3451908b180727a6a9a7bbce5d45d7b487ed1de92bf2ca5d6911923cb"

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
