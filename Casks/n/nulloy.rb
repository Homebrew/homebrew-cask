cask "nulloy" do
  version "0.9.5"
  sha256 "386d2935b427460e44bcd46b0b2e6ca1015f066b7d5e65097815d86bf4aee0ac"

  url "https://github.com/nulloy/nulloy/releases/download/#{version}/Nulloy-#{version}-x86_64.dmg",
      verified: "github.com/nulloy/nulloy/"
  name "Nulloy"
  desc "Music player"
  homepage "https://nulloy.com/"

  app "Nulloy.app"

  zap trash: "~/Library/Saved Application State/com.nulloy.savedState"
end
