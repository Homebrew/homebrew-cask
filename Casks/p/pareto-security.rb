cask "pareto-security" do
  version "1.48.0"
  sha256 "a8c56358792736f1731bc70c8379f83e4a6432342d931aae5914ec73bcd06364"

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
