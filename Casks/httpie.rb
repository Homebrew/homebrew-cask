cask "httpie" do
  arch arm: "-arm64"

  version "2022.13.0"
  sha256 arm:   "febb3fbab4021399a1968af0fb1f087598610e833221f629871335e12288ab5c",
         intel: "b932117ee7dab5f9790cd48822df0c0f2ffdef46940c095873189a6469d55f25"

  url "https://github.com/httpie/desktop/releases/download/v#{version}/HTTPie-#{version}#{arch}.dmg",
      verified: "github.com/httpie/desktop/"
  name "HTTPie for Desktop"
  desc "Desktop wrapper for HTTPie"
  homepage "https://httpie.io/product"

  livecheck do
    url "https://httpie.io/download"
    regex(/href=.*?HTTPie[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "HTTPie.app"

  zap trash: [
    "~/Library/Application Support/HTTPie",
    "~/Library/Logs/HTTPie",
    "~/Library/Preferences/io.httpie.desktop.plist",
    "~/Library/Saved Application State/io.httpie.desktop.savedState",
  ]
end
