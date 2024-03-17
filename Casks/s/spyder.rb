cask "spyder" do
  arch arm: "_arm64"

  version "5.5.3"
  sha256 arm:   "028b38a4d02f2186a5a61e0e6cc143643b0cb02bfd4e103b07e7d5af5e74fd9b",
         intel: "38b395abd9c352feb48b5436026685f62aa46849e11969a4e8db08140773ca7b"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder#{arch}.dmg",
      verified: "github.com/spyder-ide/spyder/"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Spyder.app"

  zap trash: [
    "~/.spyder-py3",
    "~/Library/Application Support/Spyder",
    "~/Library/Caches/Spyder",
    "~/Library/Saved Application State/org.spyder-ide.Spyder.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
