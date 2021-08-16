cask "mockoon" do
  version "1.15.0"
  sha256 "c68b7bb8a927521eea25d5e73d0d8402cb02499b86ad4f3900cefbe6e2be74d4"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Utility to run mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
end
