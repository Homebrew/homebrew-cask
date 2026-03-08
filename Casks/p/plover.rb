cask "plover" do
  version "5.2.3"
  sha256 "fd119ec8b7a4bae1248024b02541cc3aed1eb1bacd7c2bf84011de42ac8e25f9"

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
