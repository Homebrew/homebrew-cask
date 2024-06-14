cask "opencat" do
  version "2.22.0,488"
  sha256 "5f9c61bc42ca060c6334d2b9850c8c47b8388a6fd0666f7dc3c9fa0652c6d083"

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
