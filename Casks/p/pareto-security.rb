cask "pareto-security" do
  version "1.9.10"
  sha256 "8dd78c2c329303511fd1f63ae451c5c8439374596d62647c485fbc8457c7b552"

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
  depends_on macos: ">= :big_sur"

  app "Pareto Security.app"

  zap trash: [
    "~/Library/Caches/niteo.co.Pareto",
    "~/Library/HTTPStorages/niteo.co.Pareto",
    "~/Library/Preferences/niteo.co.Pareto.plist",
  ]
end
