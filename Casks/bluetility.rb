cask "bluetility" do
  version "1.4"
  sha256 "dff3f75f5eed22699c37ace90bb19a36f5796ddd0b9a7af1fba7ab1e213bcf53"

  url "https://github.com/jnross/Bluetility/releases/download/#{version}/Bluetility.app.zip"
  name "Bluetility"
  desc "Bluetooth Low Energy browser"
  homepage "https://github.com/jnross/Bluetility"

  app "Bluetility.app"

  zap trash: [
    "~/Library/Preferences/com.rossible.Bluetility.plist",
    "~/Library/Saved Application State/com.rossible.Bluetility.savedState",
  ]
end
