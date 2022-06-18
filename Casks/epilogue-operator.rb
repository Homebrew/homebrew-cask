cask "epilogue-operator" do
  version "0.8.2"
  sha256 :no_check

  url "https://epilogue.nyc3.cdn.digitaloceanspaces.com/releases/software/Operator/release/mac/Operator.dmg",
      verified: "epilogue.nyc3.cdn.digitaloceanspaces.com/releases/software/Operator/"
  name "Epilogue Operator"
  desc "Play and manage Game Boy cartridges on your computer"
  homepage "https://www.epilogue.co/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Operator.app"

  zap trash: [
    "~/Library/Application Support/Epilogue/Operator",
    "~/Library/Saved Application State/com.epilogue.operator.savedState",
  ]
end
