cask "kapow" do
  version "1.5.10"
  sha256 "e541804cabd200b111ee5c5b9bd0a724f6eb81daad32f2cf0ccb20f2fafb6ad0"

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  name "Kapow"
  desc "Punch clock program"
  homepage "https://gottcode.org/kapow/"

  livecheck do
    url :homepage
    regex(/Changes\s*in\s*version\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Kapow.app"

  zap trash: "~/Library/Application Support/GottCode/Kapow",
      rmdir: "~/Library/Application Support/GottCode"
end
