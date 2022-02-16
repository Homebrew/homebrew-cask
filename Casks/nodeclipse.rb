cask "nodeclipse" do
  version "2015.7,20150706"
  sha256 "674991d7c22ea05975a76800e6e9fe9231064a09a2a2412e6ec0448676bfa2e8"

  url "https://downloads.sourceforge.net/nodeclipse/Enide-#{version.major}/#{version.minor}/Enide-#{version.major}-#{version.minor}-macosx-x64-#{version.csv.second}.zip",
      verified: "sourceforge.net/nodeclipse/"
  appcast "https://nodeclipse.github.io/updates/",
          must_contain: "#{version.major}-#{version.minor}"
  name "Nodeclipse"
  homepage "https://nodeclipse.github.io/"

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/8183
  app "Eclipse.app", target: "Nodeclipse.app"
end
