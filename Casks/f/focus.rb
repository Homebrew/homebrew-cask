cask "focus" do
  version "2.4.1"
  sha256 "afb2ba7e2e1893aa03a6898603e26f115c7ecce6787635e074b023eb5b84e3c5"

  url "https://heyfocus.com/uploads/Focus-v#{version}.zip"
  name "Focus"
  desc "Website and application blocker"
  homepage "https://heyfocus.com/"

  livecheck do
    url "https://heyfocus.com/focus.zip"
    strategy :header_match
  end

  app "Focus.app"

  uninstall quit: "BradJasper.focus"

  zap trash: [
    "~/Library/Application Support/Focus",
    "~/Library/Caches/BradJasper.focus",
    "~/Library/Preferences/BradJasper.focus.plist",
  ]
end
