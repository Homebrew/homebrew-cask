cask "leapp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.13.2"

  if Hardware::CPU.intel?
    sha256 "324d61919de4762f5aca599a3a4c406211dff59ffbb22c0176df0c6d9ca89c46"
  else
    sha256 "08cf0aec2faebaedf95027ad0b8a1892dbe042ce88f3e1bf20e248e56a75076a"
  end

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
