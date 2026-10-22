cask "pareto-security" do
  version "1.38.0"
  sha256 "1cc54f592d06b2caea7f86396340125cfc19d71021b7e39cd41629ffc3b75887"

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
