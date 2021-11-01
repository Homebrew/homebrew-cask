cask "focus" do
  version "1.12.2"
  sha256 "6b487237e8a98b1aad7c6d631548d5e97a938faa63f7e23a6dc7a324cd93fa6d"

  url "https://heyfocus.com/uploads/Focus-v#{version}.zip"
  name "Focus"
  desc "Website and application blocker"
  homepage "https://heyfocus.com/"

  livecheck do
    url "https://heyfocus.com/focus.zip"
    strategy :header_match
  end

  depends_on macos: ">= :yosemite"

  app "Focus.app"

  uninstall quit: "BradJasper.focus"

  zap trash: [
    "~/Library/Application Support/Focus/",
    "~/Library/Caches/BradJasper.focus/",
    "~/Library/Preferences/BradJasper.focus.plist",
  ]
end
