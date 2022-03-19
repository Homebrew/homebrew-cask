cask "epilogue-operator" do
  version "0.7.1"
  sha256 :no_check

  url "https://www.epilogue.co/downloads/operator/osx"
  name "Epilogue Operator"
  desc "Play and manage Game Boy cartridges on your computer"
  homepage "https://www.epilogue.co/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Operator.app"

  zap trash: [
    "~/Library/Application Support/Epilogue/Operator",
    "~/Library/Saved Application State/com.epilogue.operator.savedState",
  ]
end
