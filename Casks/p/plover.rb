cask "plover" do
  version "5.2.0"
  sha256 "f234b699e04986c6edaf83db87f1b626ff03c9bca75426ae56c9a66490ac9a7b"

  on_sequoia do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/plover-#{version}-macosx_12_0_universal2.dmg",
      verified: "github.com/openstenoproject/plover/"
  name "Plover"
  desc "Stenotype engine"
  homepage "https://opensteno.org/plover/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+[\w.]+)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Plover.app"

  zap trash: "~/Library/Application Support/plover"
end
