cask "lmms" do
  version "1.2.2"
  sha256 "e5aa82086dc67817a763f3e54aa0786cdca590f26981584c07f9ff2ff1fb0503"

  url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.13.dmg",
      verified: "github.com/LMMS/lmms/"
  name "LMMS"
  desc "Music production software"
  homepage "https://lmms.io/"

  depends_on macos: ">= :high_sierra"

  app "LMMS.app"

  caveats do
    requires_rosetta
  end
end
