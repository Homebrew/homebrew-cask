cask "moves" do
  version "1.10.2"
  sha256 "2877afb7a090733107d76a30e87d82cef4be012d2337f50d7d62629590c5c2b9"

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
