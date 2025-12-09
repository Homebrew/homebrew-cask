cask "pyfa" do
  version "2.65.1"
  sha256 "a949a37cb6d5959c301464ac9e2b5b25db8fafcd18329a64fab6e6b2f99ee725"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  name "pyfa"
  desc "Fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "pyfa.app"

  zap trash: [
    "~/Library/Caches/org.pyfaorg.pyfa",
    "~/Library/Preferences/org.pyfaorg.pyfa.plist",
    "~/Library/Saved Application State/org.pyfaorg.pyfa.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
