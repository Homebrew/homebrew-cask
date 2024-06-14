cask "epilogue-playback" do
  version "1.3.0"
  sha256 "c2841e94ca3eafc61399285d09acdec9dc6e951e22eb9f45672ab56e5e761632"

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
