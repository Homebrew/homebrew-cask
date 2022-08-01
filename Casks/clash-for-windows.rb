cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.25"

  if Hardware::CPU.intel?
    sha256 "02d5f6d68c0ba4363b693e9dbd20427dd0bcc2704631283082881c2278029c29"
  else
    sha256 "2f8192704ae3c21c1ddbb4614a03b68c4c97e776424bc5ae31a57e9969539325"
  end

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
