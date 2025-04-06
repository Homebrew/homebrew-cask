cask "focus" do
  version "2.3.0"
  sha256 "19970c8eb31e64cdeb2f25bba5f69091386ea35621d5698b1decc28594c6f3ff"

  url "https://heyfocus.com/uploads/Focus-v#{version}.zip"
  name "Focus"
  desc "Website and application blocker"
  homepage "https://heyfocus.com/"

  livecheck do
    url "https://heyfocus.com/focus.zip"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "Focus.app"

  uninstall quit: "BradJasper.focus"

  zap trash: [
    "~/Library/Application Support/Focus/",
    "~/Library/Caches/BradJasper.focus/",
    "~/Library/Preferences/BradJasper.focus.plist",
  ]
end
