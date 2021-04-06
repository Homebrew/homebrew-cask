cask "airpass" do
  version "1.0.1"
  sha256 "dd13d6de4d9b430a38e188a92f371525ceb9e539587003af5ed003597bbdc05c"

  url "https://github.com/alvesjtiago/airpass/releases/download/#{version}/Airpass.dmg",
      verified: "github.com/alvesjtiago/airpass/"
  name "Airpass"
  desc "Status bar app to overcome time-constrained WiFi networks"
  homepage "https://airpass.tiagoalves.me/"

  app "Airpass.app"
end
