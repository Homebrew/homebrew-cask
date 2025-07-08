cask "epilogue-playback" do
  version "1.8.0"
  sha256 "a8ad7eacbbecad9159af0c9f76d0cbaae839e633e395efa4bebc7ed08c50bcd9"

  url "https://epilogue.nyc3.digitaloceanspaces.com/releases/software/Playback/version/#{version}/release/mac/Playback.dmg",
      verified: "epilogue.nyc3.digitaloceanspaces.com/releases/software/Playback/version/"
  name "Epilogue Playback"
  desc "Play and manage Game Boy cartridges on your computer"
  homepage "https://www.epilogue.co/"

  livecheck do
    url "https://www.epilogue.co/downloads"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/release/mac}i)
  end

  depends_on macos: ">= :big_sur"

  app "Playback.app"

  zap trash: [
    "~/Library/Application Support/Epilogue/Playback",
    "~/Library/Preferences/co.epilogue.Playback.plist",
    "~/Library/Saved Application State/com.epilogue.operator.savedState",
  ]
end
