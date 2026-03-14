cask "epilogue-playback" do
  version "1.9.0"
  sha256 "457518b52b781baa376c24fa84382396b1ce87905613ef5aed8137b5c7f09e5a"

  url "https://releases.epilogue.co/desktop/playback/#{version}/release/macos/Playback.dmg"
  name "Epilogue Playback"
  desc "Play and manage Game Boy cartridges on your computer"
  homepage "https://www.epilogue.co/"

  livecheck do
    url "https://www.epilogue.co/downloads"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/release/mac}i)
  end

  depends_on macos: ">= :monterey"

  app "Playback.app"

  zap trash: [
    "~/Library/Application Support/Epilogue/Playback",
    "~/Library/Preferences/co.epilogue.Playback.plist",
    "~/Library/Saved Application State/com.epilogue.operator.savedState",
  ]
end
