cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.22"
  sha256 arm:   "cde706ac89fd9fb62c840010d8fd9928b5a6e8bb53391a3110804e2bb9b02cca",
         intel: "bd6364526c95ec0725e008e5d1db9671519a6dd37bee1612ec247aaa52c37a2b"

  url "https://github.com/cardisoft/cardinal/releases/download/v#{version}/Cardinal_#{version}_#{arch}.dmg"
  name "Cardinal Search"
  desc "Fastest file searching tool"
  homepage "https://github.com/cardisoft/Cardinal"

  depends_on macos: ">= :monterey"

  app "Cardinal.app"

  zap trash: [
    "~/Library/Application Support/com.cardinal.one",
    "~/Library/Caches/com.cardinal.one",
    "~/Library/Preferences/com.cardinal.one.plist",
    "~/Library/Webkit/com.cardinal.one",
  ]
end
