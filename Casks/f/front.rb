cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.76.3"
  sha256 arm:   "ec0964c226a252d4342fcc3cec5d653dc54c131cf3c1e5c68ad4810838089a1a",
         intel: "de526b9118094738a50111d846ed5c0f389b0811797bfafb1f97e225cdd15cb1"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
