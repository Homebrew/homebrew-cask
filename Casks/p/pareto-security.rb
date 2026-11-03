cask "pareto-security" do
  version "1.44.0"
  sha256 "43f33a226cf577879d49083271a83c476a3d84bc04ffd94402f38424f5526e13"

  url "https://github.com/ParetoSecurity/pareto-mac/releases/download/#{version}/ParetoSecurity.dmg"
  name "Pareto Security"
  desc "Security checklist app"
  homepage "https://paretosecurity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Pareto Security.app"

  zap trash: [
    "~/Library/Caches/niteo.co.Pareto",
    "~/Library/HTTPStorages/niteo.co.Pareto",
    "~/Library/Preferences/niteo.co.Pareto.plist",
  ]
end
