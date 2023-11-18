cask "epilogue-playback" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.2"
  sha256 arm:   "7f9aab22558fb7fbe4987ce509931bdf00a6e81a1b7d1c6873870257d4273a83",
         intel: "22deefc22a3215e4c32d1e573e0c96515922c282f16d77cb3ca2914c7a824d1c"

  url "https://epilogue.nyc3.digitaloceanspaces.com/releases/software/Playback/version/#{version}/release/mac/Playback.#{arch}.dmg",
      verified: "epilogue.nyc3.digitaloceanspaces.com/releases/software/Playback/"
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

  app "Playback.app"

  zap trash: [
    "~/Library/Application Support/Epilogue/Playback",
    "~/Library/Preferences/co.epilogue.Playback.plist",
    "~/Library/Saved Application State/com.epilogue.operator.savedState",
  ]
end
