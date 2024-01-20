cask "tastytrade" do
  version "2.8.0"
  
  if Hardware::CPU.intel?
    sha256 "98ace9292f65022780328fb3a61c98c6542e62046390770d16b8942a9b9e6be8"
    url "https://download.tastytrade.com/desktop-#{version.major}.x.x/#{version}/tastytrade-#{version}.dmg"
  else
    sha256 "62532bc7b23a439e501c0eff1c3bab216adcbc5c64c05539d06fcdf5d1705088"
    url "https://download.tastytrade.com/desktop-#{version.major}.x.x/#{version}/tastytrade-#{version}-aarch64.dmg"
  end

  name "tastytrade"
  desc "Desktop trading platform"
  homepage "https://tastytrade.com/technology/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "tastytrade.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
