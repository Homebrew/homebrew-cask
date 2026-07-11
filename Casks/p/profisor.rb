cask "profisor" do
  version "1.0"
  sha256 "ef7d2eb58f03df170259e67eba2ef44a331a799ead100cec207f353e0705e592"

  url "https://github.com/yefga/Profisor/releases/download/v#{version}/Profisor-#{version}.dmg"
  name "Profisor"
  desc "Menu bar provisioning profile switcher for Apple developers"
  homepage "https://github.com/yefga/Profisor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Profisor.app"

  uninstall quit: "com.arrayofget.profisor"

  zap trash: "~/Library/Preferences/com.arrayofget.profisor.plist"
end
