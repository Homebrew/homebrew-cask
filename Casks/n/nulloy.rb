cask "nulloy" do
  version "0.9.8.7"
  sha256 "05699212d0f3b9763362dde52ee94f7d325cbed3de316e0ab3b48dc966edc578"

  url "https://github.com/nulloy/nulloy/releases/download/#{version}/Nulloy-#{version}-x86_64.dmg",
      verified: "github.com/nulloy/nulloy/"
  name "Nulloy"
  desc "Music player"
  homepage "https://nulloy.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nulloy.app"

  zap trash: "~/Library/Saved Application State/com.nulloy.savedState"
end
