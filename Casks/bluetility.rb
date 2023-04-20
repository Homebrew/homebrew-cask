cask "bluetility" do
  version "1.5"
  sha256 "49fd4fde3ecfb27e8a21f8e771ff57c62d03ebb9100600f451188462ec84dbd5"

  url "https://github.com/jnross/Bluetility/releases/download/#{version}/Bluetility.app.zip"
  name "Bluetility"
  desc "Bluetooth Low Energy browser"
  homepage "https://github.com/jnross/Bluetility"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bluetility.app"

  zap trash: [
    "~/Library/Preferences/com.rossible.Bluetility.plist",
    "~/Library/Saved Application State/com.rossible.Bluetility.savedState",
  ]
end
