cask "pareto-security" do
  version "1.25.0"
  sha256 "21a99d021f6c1a4636b961a97965b35c1d34984c157d19a32cf6334db3b67da0"

  url "https://github.com/ParetoSecurity/pareto-mac/releases/download/#{version}/ParetoSecurity.dmg",
      verified: "github.com/ParetoSecurity/pareto-mac/"
  name "Pareto Security"
  desc "Security checklist app"
  homepage "https://paretosecurity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Pareto Security.app"

  zap trash: [
    "~/Library/Caches/niteo.co.Pareto",
    "~/Library/HTTPStorages/niteo.co.Pareto",
    "~/Library/Preferences/niteo.co.Pareto.plist",
  ]
end
