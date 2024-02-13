cask "nulloy" do
  version "0.9.8"
  sha256 "2e4c856953c3834cf3c7e4eff1b33d32d50d1f46a914ea70107e058bc121c2ce"

  url "https://github.com/nulloy/nulloy/releases/download/#{version}/Nulloy-#{version}-x86_64.dmg",
      verified: "github.com/nulloy/nulloy/"
  name "Nulloy"
  desc "Music player"
  homepage "https://nulloy.com/"

  app "Nulloy.app"

  zap trash: "~/Library/Saved Application State/com.nulloy.savedState"
end
