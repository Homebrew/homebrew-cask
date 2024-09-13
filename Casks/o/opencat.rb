cask "opencat" do
  version "2.28.1,496"
  sha256 "3a47db54394169989de43cd42c04641fd8b7644a95751dceef2f97aef620b589"

  url "https://opencat.app/releases/OpenCat-#{version.csv.first}.#{version.csv.second}.dmg"
  name "OpenCat"
  desc "Native AI chat client"
  homepage "https://opencat.app/"

  livecheck do
    url "https://opencat.app/releases/versions.xml"
    strategy :sparkle do |item|
      short_version = (item.short_version.split(".").length < 3) ? "#{item.short_version}.0" : item.short_version.to_s
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
