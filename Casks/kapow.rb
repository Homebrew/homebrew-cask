cask "kapow" do
  version "1.5.10"
  sha256 "e541804cabd200b111ee5c5b9bd0a724f6eb81daad32f2cf0ccb20f2fafb6ad0"

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  appcast "https://gottcode.org/kapow/"
  name "Kapow"
  homepage "https://gottcode.org/kapow"

  app "Kapow.app"

  zap trash: "~/Library/Application Support/GottCode/Kapow",
      rmdir: "~/Library/Application Support/GottCode"
end
