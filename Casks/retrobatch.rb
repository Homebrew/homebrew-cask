cask "retrobatch" do
  version "1.4.3,946"
  sha256 :no_check

  url "https://flyingmeat.com/download/Retrobatch.zip"
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name "Retrobatch"
  homepage "https://flyingmeat.com/retrobatch/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Retrobatch.app"
end
