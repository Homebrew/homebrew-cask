cask "focus" do
  version "1.12"
  sha256 "abacca8e66edb7887b7810827217f5ec7267164b9f4cabe23f3fab9ca2669bdd"

  url "https://heyfocus.com/uploads/Focus-v#{version}.zip"
  name "Focus"
  homepage "https://heyfocus.com/"

  livecheck do
    url "https://heyfocus.com/focus.zip"
    strategy :header_match
  end

  app "Focus.app"

  uninstall quit: "BradJasper.focus"

  zap trash: [
    "~/Library/Caches/BradJasper.focus/",
    "~/Library/Application Support/Focus/",
    "~/Library/Preferences/BradJasper.focus.plist",
  ]
end
