cask "focus" do
  version "2.1.1"
  sha256 "d8585199706514671a29baed2a961913613352a6c1e05e6ba79987290713bc92"

  url "https://heyfocus.com/uploads/Focus-v#{version}.zip"
  name "Focus"
  desc "Website and application blocker"
  homepage "https://heyfocus.com/"

  livecheck do
    url "https://heyfocus.com/focus.zip"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "Focus.app"

  uninstall quit: "BradJasper.focus"

  zap trash: [
    "~/Library/Application Support/Focus/",
    "~/Library/Caches/BradJasper.focus/",
    "~/Library/Preferences/BradJasper.focus.plist",
  ]
end
