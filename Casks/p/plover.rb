cask "plover" do
  version "5.4.1"
  sha256 "22a4fc885f947cb1b5954bd5e32b51c55c57b7eb9cb909f18ec7807f2ffa948c"

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
