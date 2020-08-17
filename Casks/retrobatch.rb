cask "retrobatch" do
  version "1.4.2"
  sha256 "c26e97809e46cf6d106badc3d8596799cf7a84dab3dbcb7184dd0816f35dfe6a"

  url "https://flyingmeat.com/download/Retrobatch.zip"
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name "Retrobatch"
  homepage "https://flyingmeat.com/retrobatch/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Retrobatch.app"
end
