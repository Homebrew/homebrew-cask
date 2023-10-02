cask "bluetility" do
  version "1.5.1"
  sha256 "05ab67bf4ea75d7c6f533f8396b1f532978be1fe643523c31fa22a77f52215bc"

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
