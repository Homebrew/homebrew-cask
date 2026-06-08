cask "sky" do
  version "0.5.3"
  sha256 "1cbf4cd430ef7ff9a6aa1d42c4bf491b02b6c84952644eada20c7ac2ddf971d5"

  url "https://github.com/jcsalterego/Sky.app/releases/download/#{version}/Sky.#{version}.dmg"
  name "Sky"
  desc "Bluesky Social client"
  homepage "https://github.com/jcsalterego/Sky.app"

  depends_on macos: :big_sur

  app "Sky.app"

  zap trash: [
    "~/Library/Application Scripts/jcsalterego.Sky",
    "~/Library/Containers/jcsalterego.Sky",
  ]
end
