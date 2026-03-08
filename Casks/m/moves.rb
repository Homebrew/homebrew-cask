cask "moves" do
  version "1.9.1"
  sha256 "3371e4388eadfeab13714a2fccdb7becb200eb313d4f2014cac6740c82d4eded"

  url "https://github.com/mikker/Moves.app/releases/download/v#{version}/Moves.app.zip",
      verified: "github.com/mikker/Moves.app/"
  name "Moves"
  desc "Window manager"
  homepage "https://mikkelmalmberg.com/moves"

  livecheck do
    url "https://mikker.github.io/Moves.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Moves.app"

  zap trash: "~/Library/Application Support/Moves"
end
