cask "retrobatch" do
  version "2.0.2"
  sha256 "336144b334af5e4a80286c4261d0e65382664b37d94a3088086c26695a5c075e"

  url "https://flyingmeat.com/download/Retrobatch-#{version}.zip"
  name "Retrobatch"
  desc "Batch image processor"
  homepage "https://flyingmeat.com/retrobatch/"

  livecheck do
    url "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Retrobatch.app"
end
