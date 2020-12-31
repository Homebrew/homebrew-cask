cask "fellow" do
  version "1.0.18"
  sha256 "14e1c4f5e9d82809dddffc76ed3981096a6fee116d1304f8818eb0e8186eaf99"

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
