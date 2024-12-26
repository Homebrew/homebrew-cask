cask "opencat" do
  version "2.35.0,513"
  sha256 "f57ed77cbdb98b159a59ca02114653028a5db4d6c9b483f961bedd516799e4bf"

  url "https://opencat.app/releases/OpenCat-#{version.csv.first}.#{version.csv.second}.dmg"
  name "OpenCat"
  desc "Native AI chat client"
  homepage "https://opencat.app/"

  livecheck do
    url "https://opencat.app/releases/versions.xml"
    strategy :sparkle do |item|
      short_version = (item.short_version.count(".") >= 2) ? item.short_version : "#{item.short_version}.0"
      "#{short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "OpenCat.app"

  zap trash: [
    "~/Library/Application Scripts/tech.baye.OpenCat",
    "~/Library/Containers/tech.baye.OpenCat",
    "~/Library/Group Containers/group.tech.baye.openai",
    "~/Library/Saved Application State/tech.baye.OpenCat.savedState",
  ]
end
