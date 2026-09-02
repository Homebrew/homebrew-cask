cask "epilogue-playback" do
  version "1.10.0"
  sha256 "fa208044442a6341a04c17354caf018867217ce6cb35180c5ec5f0f0b6b4b65e"

  url "https://releases.epilogue.co/desktop/playback/#{version}/release/macos/Playback.dmg"
  name "Epilogue Playback"
  desc "Play and manage Game Boy cartridges on your computer"
  homepage "https://www.epilogue.co/"

  livecheck do
    url "https://www.epilogue.co/downloads"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/release/mac}i)
  end

  depends_on macos: :monterey

  app "Playback.app"

  zap trash: [
    "~/Library/Application Support/Epilogue/Playback",
    "~/Library/Preferences/co.epilogue.Playback.plist",
    "~/Library/Saved Application State/com.epilogue.operator.savedState",
  ]
end
