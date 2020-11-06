cask "swiftdefaultappsprefpane" do
  version "2.0.1"
  sha256 "e8ca50cc23a5edacaecde66755083bbf232f0a056e1e874011edbd2c603cbdc9"

  url "https://github.com/Lord-Kamina/SwiftDefaultApps/releases/download/v#{version}/SwiftDefaultApps-v#{version}.zip"
  appcast "https://github.com/Lord-Kamina/SwiftDefaultApps/releases.atom"
  name "SwiftDefaultApps"
  homepage "https://github.com/Lord-Kamina/SwiftDefaultApps"

  prefpane "SwiftDefaultApps.prefPane"
end
