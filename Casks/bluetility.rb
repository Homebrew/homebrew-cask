cask "bluetility" do
  version "1.3"
  sha256 "fc70baf397c5a9fb24261c823859ec6b798004b406dee3ac39c01fb79342988f"

  url "https://github.com/jnross/Bluetility/releases/download/#{version}/Bluetility.app.zip"
  appcast "https://github.com/jnross/Bluetility/releases.atom"
  name "Bluetility"
  homepage "https://github.com/jnross/Bluetility"

  app "Bluetility.app"

  zap trash: [
    "~/Library/Preferences/com.rossible.Bluetility.plist",
    "~/Library/Saved Application State/com.rossible.Bluetility.savedState",
  ]
end
