cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 arm:   "ad9365e72c2780c4650fb8b0162c8b5e22fa4e66386bf3d89ffaecee68710550",
         intel: "0256901223dcf669a1a7877831ab70bc5f276c8eddf26da0d3033eac19d82166"

  url "https://github.com/heyman/heynote/releases/download/v#{version}/Heynote_#{version}_#{arch}.dmg",
      verified: "github.com/heyman/heynote/"
  name "Heynote"
  desc "Dedicated scratchpad for developers"
  homepage "https://heynote.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Heynote.app"

  zap trash: [
    "~/Library/Application Support/Heynote",
    "~/Library/Logs/Heynote",
    "~/Library/Saved Application State/com.heynote.app.savedState",
  ]
end
