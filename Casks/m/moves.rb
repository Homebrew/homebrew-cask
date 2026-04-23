cask "moves" do
  version "1.9.3"
  sha256 "01551d1d215e60b9d075151168572d3d9c580444e4cc05e585e91d6999dd59bc"

  url "https://github.com/mikker/Moves.app/releases/download/v#{version}/Moves.app.zip"
  name "Moves"
  desc "Window manager"
  homepage "https://github.com/mikker/Moves.app/"

  livecheck do
    url "https://mikker.github.io/Moves.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Moves.app"

  zap trash: "~/Library/Application Support/Moves"
end
