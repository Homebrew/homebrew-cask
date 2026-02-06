cask "plover" do
  version "5.2.1"
  sha256 "0f6d5f8b1060c426da525ac0cea0da65d7d689713d91620f3cdaca40209c4406"

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
