cask "quintile" do
  version "0.1.6"
  sha256 "b500addcb2f7e7660c1964a2316a4f549fa23bb75d50a7e26460a4be7db71777"

  url "https://github.com/stefanopineda/quintile/releases/download/v#{version}/Quintile.app.zip"
  name "Quintile"
  desc "Keyboard-only N×M grid window tiling"
  homepage "https://github.com/stefanopineda/quintile"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Quintile.app"

  zap trash: [
    "~/Library/Application Support/Quintile",
    "~/Library/Preferences/com.stefanopineda.quintile.plist",
  ]
end
