cask "plover" do
  version "5.4.0"
  sha256 "04a84eed4f406c3d1846db6c707e17b9cd674b1835da4b39d99220e359074f97"

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

  depends_on macos: :monterey

  app "Plover.app"

  zap trash: "~/Library/Application Support/plover"
end
