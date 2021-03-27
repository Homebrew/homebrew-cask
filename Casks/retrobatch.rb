cask "retrobatch" do
  version "1.4.3,946"
  sha256 :no_check

  url "https://flyingmeat.com/download/Retrobatch.zip"
  name "Retrobatch"
  homepage "https://flyingmeat.com/retrobatch/"

  livecheck do
    url "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Retrobatch.app"
end
