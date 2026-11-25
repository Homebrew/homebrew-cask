cask "moves" do
  version "1.10.4"
  sha256 "0ed11e8d424b1df88ae3238f33678c05ecabd86cdbb054220fdcab8c28b49f31"

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
