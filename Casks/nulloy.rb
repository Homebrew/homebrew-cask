cask "nulloy" do
  version "0.8.2"
  sha256 "67acc5ada9b5245cda7da04456bc18ad6e9b49dbdcb1e2752ce988d4d3607b35"

  url "https://github.com/nulloy/nulloy/releases/download/#{version}/Nulloy-#{version}-x86_64.dmg",
      verified: "github.com/nulloy/nulloy/"
  name "Nulloy"
  desc "Music player"
  homepage "https://nulloy.com/"

  app "Nulloy.app"

  zap trash: "~/Library/Saved Application State/com.nulloy.savedState"
end
