cask "moves" do
  version "1.10.0"
  sha256 "03216bc74293a4c01e0307a50317bf036e746798f10b1e8dde7ba96670970c6d"

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
