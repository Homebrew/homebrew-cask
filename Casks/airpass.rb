cask "airpass" do
  version "1.0.1"
  sha256 "dd13d6de4d9b430a38e188a92f371525ceb9e539587003af5ed003597bbdc05c"

  # github.com/alvesjtiago/airpass/ was verified as official when first introduced to the cask
  url "https://github.com/alvesjtiago/airpass/releases/download/#{version}/Airpass.dmg"
  appcast "https://github.com/alvesjtiago/airpass/releases.atom"
  name "Airpass"
  desc "Status bar app to overcome time-constrained WiFi networks"
  homepage "http://airpass.tiagoalves.me/"

  app "Airpass.app"
end
