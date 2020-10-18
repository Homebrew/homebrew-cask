cask "scihubeva" do
  version "v4.1.0"
  sha256 "d6feb6c6632209201e8b0f1e1a811fa073238b6414de40269f6ee2cccc29c0ba"

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast "https://github.com/leovan/SciHubEVA/releases.atom"
  name "SciHubEVA"
  desc "Cross-platform Sci-Hub GUI app"
  homepage "https://github.com/leovan/SciHubEVA"

  app "SciHubEVA.app"
end
