cask "epilogue-playback" do
  version "1.1.0"
  sha256 "8f91e0f5311915e02e3cced3a62d4b0f536703172ed23507222b8943b9b1cba9"

  url "https://epilogue.nyc3.digitaloceanspaces.com/releases/software/Playback/version/#{version}/release/mac/Playback.dmg",
      verified: "epilogue.nyc3.digitaloceanspaces.com/releases/software/Playback/version/"
  name "Epilogue Playback"
  desc "Play and manage Game Boy cartridges on your computer"
  homepage "https://www.epilogue.co/"

  livecheck do
    url "https://www.epilogue.co/v2/api/update"
    strategy :json do |json|
      v = json["operator-app"]["osx"]["version"]
      "#{v["major"]}.#{v["minor"]}.#{v["patch"]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "Playback.app"

  zap trash: [
    "~/Library/Application Support/Epilogue/Playback",
    "~/Library/Preferences/co.epilogue.Playback.plist",
    "~/Library/Saved Application State/com.epilogue.operator.savedState",
  ]
end
