cask "plover" do
  version "5.3.0"
  sha256 "e218408ed9b8c3b2019df76d782c3243f9be7c8d00d01eb01ab062716ef7c2af"

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
