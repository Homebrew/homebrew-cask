cask "epilogue-playback" do
  version "1.5.1"
  sha256 "5a2ae23d8fd6ab0506c637acd3f6ec821fe87af40aa0c832a8348e6814b18d45"

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
