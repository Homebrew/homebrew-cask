cask "nulloy" do
  version "0.9.1"
  sha256 "a32ec59f32dc3ebe473cebce8f6a44f03d2a72d5062615e0e187d9b0a0815f0d"

  url "https://github.com/nulloy/nulloy/releases/download/#{version}/Nulloy-#{version}-x86_64.dmg",
      verified: "github.com/nulloy/nulloy/"
  name "Nulloy"
  desc "Music player"
  homepage "https://nulloy.com/"

  app "Nulloy.app"

  zap trash: "~/Library/Saved Application State/com.nulloy.savedState"
end
