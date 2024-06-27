cask "swiftdefaultappsprefpane" do
  version "2.0.1"
  sha256 "e8ca50cc23a5edacaecde66755083bbf232f0a056e1e874011edbd2c603cbdc9"

  url "https://github.com/Lord-Kamina/SwiftDefaultApps/releases/download/v#{version}/SwiftDefaultApps-v#{version}.zip"
  name "SwiftDefaultApps"
  desc "Replacement for RCDefaultApps, written in Swift"
  homepage "https://github.com/Lord-Kamina/SwiftDefaultApps"

  binary "swda"
  prefpane "SwiftDefaultApps.prefpane"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
