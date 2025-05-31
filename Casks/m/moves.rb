cask "moves" do
  version "1.8.0"
  sha256 "c1476ffc9835468ed7b4a214521fa046a1be3b7724eaab6085c49f7d6589d376"

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
