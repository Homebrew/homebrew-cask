cask "epilogue-playback" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.3"
  sha256 arm:   "75697c8c3ea9719c41101f62f5787bfb1465fad7e407835dc191280fecae8556",
         intel: "d1f76509bfdccdf8a68fd8ef71eab20000c7bb5a8c3299ec71f9fba6df562a5b"

  url "https://epilogue.nyc3.digitaloceanspaces.com/releases/software/Playback/version/#{version}/release/mac/Playback.#{arch}.dmg",
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
