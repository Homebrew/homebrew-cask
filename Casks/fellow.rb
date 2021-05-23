cask "fellow" do
  version "1.0.33"
  sha256 "987879660b482de9211015f8cd5c59430c9325b4578716b9cbe9e5d38bf2abaa"

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
