cask "lite-xl" do
  version "2.0.2"
  sha256 "cf45a3537319cf312201876cb9aeea959b940bb39836adbb6e30407b17872d33"

  url "https://github.com/lite-xl/lite-xl/releases/download/v#{version}/lite-xl-macos-x86_64.dmg"
  name "lite-xl"
  desc "Lightweight text editor written in Lua"
  homepage "https://github.com/lite-xl/lite-xl"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  app "Lite XL.app"
end
