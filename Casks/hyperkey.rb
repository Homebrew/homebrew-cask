cask "hyperkey" do
  version "0.11"
  sha256 "b7ec7e59d8f5355ab7cfd7df93c84c9c38144da175c11dc8effd863b371a6583"

  url "https://hyperkey.app/downloads/Hyperkey#{version}.dmg"
  name "hyperkey"
  desc "Convert your caps lock key or any of your modifier keys to the hyper key"
  homepage "https://hyperkey.app/"

  livecheck do
    url :homepage
    regex(/href=.+(\d+(:?\.\d+)).dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "Hyperkey.app"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.HyperkeyLauncher",
    "~/Library/Application Support/Hyperkey",
    "~/Library/Caches/com.knollsoft.Hyperkey",
    "~/Library/Containers/com.knollsoft.HyperkeyLauncher",
    "~/Library/Preferences/com.knollsoft.Hyperkey.plist",
  ]
end
