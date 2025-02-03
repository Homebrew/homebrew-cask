cask "bluetility" do
  version "1.6.0"
  sha256 "6df16eb0f4912226a411bfcd1d8eb833e02dc7596026127fc6f2576152933584"

  url "https://github.com/jnross/Bluetility/releases/download/#{version}/Bluetility.app.zip"
  name "Bluetility"
  desc "Bluetooth Low Energy browser"
  homepage "https://github.com/jnross/Bluetility"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bluetility.app"

  zap trash: [
    "~/Library/Preferences/com.rossible.Bluetility.plist",
    "~/Library/Saved Application State/com.rossible.Bluetility.savedState",
  ]
end
