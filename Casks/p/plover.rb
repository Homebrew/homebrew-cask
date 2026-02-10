cask "plover" do
  version "5.2.2"
  sha256 "3a6863417bb8a7e009964c3219683c9df5f22484a918de6b0cac8182ec3efb4c"

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
