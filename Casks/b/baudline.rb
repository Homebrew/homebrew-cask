cask "baudline" do
  version "1.08"
  sha256 "f47201069812333c36715beaacb17de93bc8fa5f7e68952fe51296f04df69f83"

  url "https://www.baudline.com/baudline_#{version}_macosx_universal.dmg"
  name "baudline"
  desc "Time-frequency browser"
  homepage "https://www.baudline.com/"

  disable! date: "2024-07-09", because: :no_longer_meets_criteria

  app "baudline.app"
end
