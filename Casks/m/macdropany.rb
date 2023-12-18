cask "macdropany" do
  version "3.0.2"
  sha256 "47c842c1d525cbe012af94c3bf82d03b74a2e1f655f2a222696897c56228e974"

  url "https://github.com/sebthedev/MacDropAny/releases/download/v#{version}/MacDropAny.#{version}.zip"
  name "MacDropAny"
  desc "Syncs any local folder with the cloud"
  homepage "https://github.com/sebthedev/MacDropAny"

  deprecate! date: "2023-12-17", because: :discontinued

  app "MacDropAny.app"

  zap trash: "~/Library/Services/Sync via MacDropAny.workflow"
end
