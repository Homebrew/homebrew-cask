cask "moves" do
  version "1.10.3"
  sha256 "66d3d88eab40d188e2c66d0c044e5810a0af2375f234b6d50cecb554f1327bf7"

  url "https://github.com/mikker/Moves.app/releases/download/v#{version}/Moves.app.zip"
  name "Moves"
  desc "Window manager"
  homepage "https://github.com/mikker/Moves.app/"

  livecheck do
    url "https://mikker.github.io/Moves.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Moves.app"

  zap trash: "~/Library/Application Support/Moves"
end
