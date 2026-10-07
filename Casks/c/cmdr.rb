cask "cmdr" do
  version "0.50.0"
  sha256 "6929b781eb4498fe61b242713aec517b21ac0e24ce382b7961fd55145894e97c"

  url "https://license.getcmdr.com/download/#{version}/universal"
  name "Cmdr"
  desc "Keyboard-driven dual-pane file manager"
  homepage "https://getcmdr.com/"

  livecheck do
    url "https://getcmdr.com/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Cmdr.app"

  zap trash: [
    "~/Library/Application Support/com.veszelovszki.cmdr",
    "~/Library/Caches/com.veszelovszki.cmdr",
    "~/Library/Logs/com.veszelovszki.cmdr",
    "~/Library/WebKit/com.veszelovszki.cmdr",
  ]
end
