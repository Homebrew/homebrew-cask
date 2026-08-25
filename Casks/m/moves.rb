cask "moves" do
  version "1.10.1"
  sha256 "fdf81e0d86d4ad078a16b7496ca35aaff0ad1b687a05368b85550fa41cfcbdd6"

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
