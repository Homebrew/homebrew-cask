cask "focus" do
  version "2.0.1"
  sha256 "1be9344f7679d770d3b24daac9fc310ec00888b2c3517aea9fb9160879875cf2"

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
