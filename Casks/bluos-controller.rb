cask "bluos-controller" do
  version "3.20.4"
  sha256 "955377dfa953d45155773b6ce49cb1623abbce7bb8104b4653c8c4f155edaf0e"

  url "https://content-bluesound-com.s3.amazonaws.com/uploads/2023/02/BluOS-Controller-#{version}.dmg",
      verified: "content-bluesound-com.s3.amazonaws.com"
  name "bluos-controller"
  desc "Manage audio systems"
  homepage "https://www.bluesound.com/"

  livecheck do
    url "https://www.bluesound.com/downloads"
    strategy :page_match
    regex(%r{href=".*?/BluOS-Controller-(\d+(?:\.\d+)*)\.dmg"}i)
  end

  depends_on macos: ">= :high_sierra"

  app "BluOS Controller.app"
end
