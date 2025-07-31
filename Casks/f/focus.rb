cask "focus" do
  version "2.4.0"
  sha256 "97516f8a0cc13e45f07ca57ba574bb9d1ace6387075561532c33fb06b794e71a"

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
    "~/Library/Application Support/Focus",
    "~/Library/Caches/BradJasper.focus",
    "~/Library/Preferences/BradJasper.focus.plist",
  ]
end
