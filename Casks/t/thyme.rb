cask "thyme" do
  version "0.5.1"
  sha256 "9757fff3198d379d3fc1d6231669d1eea6e0d1ba7aa2b876782998415d050ae2"

  url "https://github.com/joaomoreno/thyme/releases/download/#{version}/Thyme.#{version}.dmg",
      verified: "github.com/joaomoreno/thyme/"
  name "Thyme"
  desc "Task timer"
  homepage "https://joaomoreno.github.io/thyme/"

  app "Thyme.app"

  zap trash: [
    "~/Library/Application Support/Thyme",
    "~/Library/Preferences/com.joaomoreno.Thyme.plist",
  ]

  caveats do
    requires_rosetta
  end
end
