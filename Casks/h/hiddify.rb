cask "hiddify" do
  version "0.12.2"
  sha256 "a58a7ddd0be1b27195786e508290ea0e77fef3714b53a274931ba48f37be8f9d"

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/hiddify-macos-universal.zip"
  name "Hiddify-Next"
  desc "Multi-platform proxy client, support Sing-box, X-ray, Hysteria, Trojan, SS etc"
  homepage "https://hiddify.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Hiddify Next.app"

  zap trash: [
    "~/Library/Application Support/app.hiddify.com",
    "~/Library/Preferences/app.hiddify.com.plist",
  ]
end
