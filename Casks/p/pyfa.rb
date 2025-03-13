cask "pyfa" do
  version "2.62.1"
  sha256 "b3708bd797a70a5e48ef5629d1c90579102b1d04b1a7e950295252aa492fe0e7"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  name "pyfa"
  desc "Fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  livecheck do
    url :url
    strategy :github_latest
  end

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
